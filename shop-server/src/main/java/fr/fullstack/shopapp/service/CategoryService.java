package fr.fullstack.shopapp.service;

import fr.fullstack.shopapp.model.Category;
import fr.fullstack.shopapp.model.Product;
import fr.fullstack.shopapp.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import java.util.List;
import java.util.Optional;

@Service
public class CategoryService {
    @Autowired
    private CategoryRepository categoryRepository;

    @PersistenceContext
    private EntityManager em;

    public Category createCategory(Category category) throws Exception {
        try {
            return categoryRepository.save(category);
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }

    @Transactional
    public void deleteCategoryById(long id) throws Exception {
        try {
            Category category = getCategory(id);
            // delete nested relations with products
            deleteNestedRelations(category);
            categoryRepository.deleteById(id);
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }

    public Category getCategoryById(long id) throws Exception {
        try {
            return getCategory(id);
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }

    public Page<Category> getCategoryList(Pageable pageable) {
        return categoryRepository.findByOrderByIdAsc(pageable);
    }

    public Category updateCategory(Category category) throws Exception {
        try {
            getCategory(category.getId());
            return this.createCategory(category);
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }

    private void deleteNestedRelations(Category category) {
        List<Product> products = category.getProducts();
        for (int i = 0; i < products.size(); i++) {
            Product product = products.get(i);
            List<Category> categories = product.getCategories();
            categories.remove(category);
            product.setCategories(categories);
            em.merge(product);
            em.flush();
        }
    }

    private Category getCategory(Long id) throws Exception {
        Optional<Category> category = categoryRepository.findById(id);
        if (!category.isPresent()) {
            throw new Exception("Category with id " + id + " not found");
        }
        return category.get();
    }
}
