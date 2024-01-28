package fr.fullstack.shopapp.model;

import fr.fullstack.shopapp.validation.StringEnumeration;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Entity
@Table(name = "LocalizedProduct")
@Data
public class LocalizedProduct {
    @Column
    @Size(min = 1, max = 255, message = "Description must be between 1 and 255 characters")
    private String description;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(nullable = false)
    @StringEnumeration(enumClass = Locale.class, message = "Locale must be FR or EN")
    @NotNull(message = "Locale may not be null")
    private String locale;

    @Column(nullable = false)
    @Size(min = 1, max = 255, message = "Name must be between 1 and 255 characters")
    @NotNull(message = "Name may not be null")
    private String name;
}
