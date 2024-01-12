package fr.fullstack.shopapp.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.time.LocalTime;

@Entity
@Table(name = "openingHours")
public class OpeningHoursShop {
    @Column(nullable = false)
    @JsonFormat(pattern = "HH:mm:ss")
    @NotNull(message = "CloseAt may not be null")
    private LocalTime closeAt;

    @Column(nullable = false)
    @NotNull(message = "Day may not be null")
    @Min(value = 1, message = "Day should not be less than 1")
    @Max(value = 7, message = "Day should not be greater than 7")
    private int day;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(nullable = false)
    @JsonFormat(pattern = "HH:mm:ss")
    @NotNull(message = "OpenAt may not be null")
    private LocalTime openAt;

    public LocalTime getCloseAt() {
        return closeAt;
    }

    public long getDay() {
        return day;
    }

    public long getId() {
        return id;
    }

    public LocalTime getOpenAt() {
        return openAt;
    }

    public void setCloseAt(LocalTime closeAt) {
        this.closeAt = closeAt;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setOpenAt(LocalTime openAt) {
        this.openAt = openAt;
    }
}
