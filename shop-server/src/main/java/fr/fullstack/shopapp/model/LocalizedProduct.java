package fr.fullstack.shopapp.model;

import fr.fullstack.shopapp.validation.StringEnumeration;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "LocalizedProduct")
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

    public String getDescription() {
        return description;
    }

    public long getId() {
        return id;
    }

    public String getLocale() {
        return locale;
    }

    public String getName() {
        return name;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setLocale(String locale) {
        this.locale = locale;
    }

    public void setName(String name) {
        this.name = name;
    }
}
