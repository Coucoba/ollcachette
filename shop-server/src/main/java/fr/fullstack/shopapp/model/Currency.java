package fr.fullstack.shopapp.model;

import lombok.AllArgsConstructor;
import lombok.Getter;


@AllArgsConstructor
@Getter
public enum Currency {

    EUR("Euro", 1.00f),
    DOL("Dollar", 1.09f),
    PES("Peso", 18.69f),
    YEN("Yen", 160.69f);
    private final String name;
    private final float ConversionRate;

}
