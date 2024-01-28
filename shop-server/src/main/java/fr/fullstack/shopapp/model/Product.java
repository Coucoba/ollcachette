package fr.fullstack.shopapp.model;

import jakarta.persistence.*;
import jakarta.validation.Valid;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.PositiveOrZero;
import jakarta.validation.constraints.Size;
import lombok.Data;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Entity
@Table(name = "products")
@Data
public class Product {
    @ManyToMany
    @JoinTable(
            name = "products_categories",
            joinColumns = @JoinColumn(name = "product_id"),
            inverseJoinColumns = @JoinColumn(name = "category_id"))
    private List<Category> categories = new ArrayList<Category>();

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @OneToMany(cascade = {CascadeType.ALL}, orphanRemoval = true)
    @Size(min = 1, message = "At least one name and one description must be provided")
    private List<@Valid LocalizedProduct> localizedProduct = new ArrayList<LocalizedProduct>();

    @Column(nullable = false)
    @PositiveOrZero(message = "Price must be positive")
    @NotNull(message = "Price may not be null")
    private float price;

    @Column(nullable = true)
    private float dollarPrice = price * Currency.DOL.getConversionRate();

    @Column(nullable = true)
    private float pesoPrice = price * Currency.PES.getConversionRate();

    @Column(nullable = true)
    private float yenPrice = price * Currency.YEN.getConversionRate();

    @ManyToOne
    private Shop shop;
}
