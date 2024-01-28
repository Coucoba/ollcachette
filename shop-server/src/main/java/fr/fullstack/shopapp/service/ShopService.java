package fr.fullstack.shopapp.service;

import fr.fullstack.shopapp.model.OpeningHoursShop;
import fr.fullstack.shopapp.model.Product;
import fr.fullstack.shopapp.model.Shop;
import fr.fullstack.shopapp.repository.ShopRepository;
import org.hibernate.search.engine.search.query.SearchResult;
import org.hibernate.search.mapper.orm.Search;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Service
public class ShopService {
    @PersistenceContext
    private EntityManager em;

    @Autowired
    private ShopRepository shopRepository;

    @Transactional
    public Shop createShop(Shop shop) throws Exception {
        // check if no conflit between time slot
        var listHours = shop.getOpeningHours();
        for (var hour : listHours) {
            if (listHours.stream().anyMatch(h -> isOpen(h, hour))) {
                throw new Exception("Shop is already Open in one time slot");
            }
        }
        try {
            Shop newShop = shopRepository.save(shop);
            // Refresh the entity after the save. Otherwise, @Formula does not work.
            em.flush();
            em.refresh(newShop);
            return newShop;
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }

    @Transactional
    public void deleteShopById(long id) throws Exception {
        try {
            Shop shop = getShop(id);
            // delete nested relations with products
            deleteNestedRelations(shop);
            shopRepository.deleteById(id);
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }

    public Shop getShopById(long id) throws Exception {
        try {
            return getShop(id);
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }

    public Page<Shop> getShopList(
            Optional<String> sortBy,
            Optional<Boolean> inVacations,
            Optional<String> createdBefore,
            Optional<String> createdAfter,
            Pageable pageable
    ) {
        // SORT
        if (sortBy.isPresent()) {
            switch (sortBy.get()) {
                case "name":
                    return shopRepository.findByOrderByNameAsc(pageable);
                case "createdAt":
                    return shopRepository.findByOrderByCreatedAtAsc(pageable);
                default:
                    return shopRepository.findByOrderByNbProductsAsc(pageable);
            }
        }

        // FILTERS
        Page<Shop> shopList = getShopListWithFilter(inVacations, createdBefore, createdAfter, pageable);
        if (shopList != null) {
            return shopList;
        }

        // NONE
        return shopRepository.findByOrderByIdAsc(pageable);
    }

    public Page<Shop> getShopListPlainText(Optional<Boolean> inVacations, Optional<String> createdBefore, Optional<String> createdAfter, Pageable pageable, String name) {
        SearchResult<Shop> result = Search.session(em)
                .search(Shop.class)
                .where(f -> f.match()
                        .fields("name")
                        .matching(name)
                ).fetchAll();
        List<Shop> list = result.hits();

        List<Shop> filtered = list.stream().filter(
                s -> {
                    boolean keep = true;
                    if(inVacations.isPresent()) {
                        keep = inVacations.get().equals(s.isInVacations());
                    }
                    if(createdAfter.isPresent()) {
                        LocalDate afterDate = LocalDate.parse(createdAfter.get());
                        keep = s.getCreatedAt().isAfter(afterDate);
                    }
                    if(createdBefore.isPresent()) {
                        LocalDate beforeDate = LocalDate.parse(createdBefore.get());
                        keep = s.getCreatedAt().isBefore(beforeDate);
                    }
                    return keep;
                }
        ).toList();

        return new PageImpl<>(filtered, pageable, filtered.size());
    }

    @Transactional
    public Shop updateShop(Shop shop) throws Exception {
        try {
            getShop(shop.getId());
            return this.createShop(shop);
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }

    private void deleteNestedRelations(Shop shop) {
        List<Product> products = shop.getProducts();
        for (int i = 0; i < products.size(); i++) {
            Product product = products.get(i);
            product.setShop(null);
            em.merge(product);
            em.flush();
        }
    }

    private Shop getShop(Long id) throws Exception {
        Optional<Shop> shop = shopRepository.findById(id);
        if (!shop.isPresent()) {
            throw new Exception("Shop with id " + id + " not found");
        }
        return shop.get();
    }

    private Page<Shop> getShopListWithFilter(
            Optional<Boolean> inVacations,
            Optional<String> createdAfter,
            Optional<String> createdBefore,
            Pageable pageable
    ) {
        if (inVacations.isPresent() && createdBefore.isPresent() && createdAfter.isPresent()) {
            return shopRepository.findByInVacationsAndCreatedAtGreaterThanAndCreatedAtLessThan(
                    inVacations.get(),
                    LocalDate.parse(createdAfter.get()),
                    LocalDate.parse(createdBefore.get()),
                    pageable
            );
        }

        if (inVacations.isPresent() && createdBefore.isPresent()) {
            return shopRepository.findByInVacationsAndCreatedAtLessThan(
                    inVacations.get(), LocalDate.parse(createdBefore.get()), pageable
            );
        }

        if (inVacations.isPresent() && createdAfter.isPresent()) {
            return shopRepository.findByInVacationsAndCreatedAtGreaterThan(
                    inVacations.get(), LocalDate.parse(createdAfter.get()), pageable
            );
        }

        if (inVacations.isPresent()) {
            return shopRepository.findByInVacations(inVacations.get(), pageable);
        }

        if (createdBefore.isPresent() && createdAfter.isPresent()) {
            return shopRepository.findByCreatedAtBetween(
                    LocalDate.parse(createdAfter.get()), LocalDate.parse(createdBefore.get()), pageable
            );
        }

        if (createdBefore.isPresent()) {
            return shopRepository.findByCreatedAtLessThan(
                    LocalDate.parse(createdBefore.get()), pageable
            );
        }

        if (createdAfter.isPresent()) {
            return shopRepository.findByCreatedAtGreaterThan(
                    LocalDate.parse(createdAfter.get()), pageable
            );
        }

        return null;
    }

    private boolean isOpen(OpeningHoursShop h1, OpeningHoursShop h2) {
        if (h1.getDay() == h2.getDay()) {
            if (h1.getOpenAt().isBefore(h2.getOpenAt()) && h1.getCloseAt().isAfter(h2.getCloseAt())) {
                return true;
            }
            if (h2.getOpenAt().isBefore(h1.getOpenAt()) && h2.getCloseAt().isAfter(h2.getCloseAt())) {
                return true;
            }
            if (h1.getOpenAt().isBefore(h2.getOpenAt()) && h1.getCloseAt().isAfter(h2.getOpenAt())) {
                return true;
            }
            if (h2.getOpenAt().isBefore(h1.getOpenAt()) && h2.getCloseAt().isAfter(h1.getOpenAt())) {
                return true;
            }
        }
        return false;
    }
}
