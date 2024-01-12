package fr.fullstack.shopapp.repository;

import fr.fullstack.shopapp.model.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ProductRepository extends JpaRepository<Product, Long> {
    Page<Product> findByOrderByIdAsc(Pageable pageable);

    @Query(value = "SELECT * FROM Products WHERE shop_id = ?1", nativeQuery = true)
    Page<Product> findByShop(Long shopId, Pageable pageable);

    @Query(value = "SELECT * FROM Products p WHERE p.shop_id = ?1 AND p.id IN (SELECT pc.product_id FROM "
            + "products_categories pc WHERE pc.category_id = ?2)",
           nativeQuery = true)
    Page<Product> findByShopAndCategory(Long shopId, Long categoryId, Pageable pageable);
}
