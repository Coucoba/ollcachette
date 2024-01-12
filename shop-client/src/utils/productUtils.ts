import { MinimalLocalizedProduct, MinimalProduct, Product } from '../types/product';
import { LocalizedProduct } from '../types';
import Language from '../types/locale';

/**
 *
 * @param localizedProducts The localizedProducts of the product
 * @param locale The current locale of the app
 * @returns The localizedProduct corresponding to the locale or the localizedProduct in French
 * if the locale not exists in localizedProducts
 */
export const getLocalizedProduct = (
    localizedProducts: LocalizedProduct[] | MinimalLocalizedProduct[],
    locale: Language,
) => {
    const result = localizedProducts.find((o) => {
        return o.locale === locale;
    });

    return result ?? localizedProducts[0];
};

/**
 *
 * @param product The product to display
 * @param locale The current locale of the app
 * @returns The product with the name and the description corresponding to the locale
 */
export const formatterLocalizedProduct = (product: Product, locale: Language) => {
    const localizedProduct = getLocalizedProduct(product.localizedProducts, locale);
    return { ...product, name: localizedProduct.name, description: localizedProduct.description };
};

/**
 *
 * @param product The product to format
 * @returns The product with a clean localizedProducts
 */
export const formatterProductForm = (product: MinimalProduct): MinimalProduct => {
    const results: MinimalLocalizedProduct[] = [];
    const localizedProducts = product.localizedProducts;

    localizedProducts.forEach((localizedProduct) => {
        // clean the empty fields in localizedProducts
        const reducedLocalizedProduct = Object.fromEntries(
            // eslint-disable-next-line @typescript-eslint/no-unused-vars
            Object.entries(localizedProduct).filter(([_, v]) => v !== '' && v !== null),
        ) as MinimalLocalizedProduct;

        // keep only localizedProduct which has at least one not empty field
        const nbProperties = Object.keys(reducedLocalizedProduct).length;
        const cond = reducedLocalizedProduct.id ? nbProperties > 2 : nbProperties > 1;
        if (cond) {
            results.push(reducedLocalizedProduct);
        }
    });

    return { ...product, localizedProducts: results };
};
