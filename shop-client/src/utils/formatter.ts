/**
 *
 * @param word The word to pluralize if necessary
 * @param nb The number which preceeds the word
 * @returns The word pluralized if it was necessary
 */
export const pluralize = (word: string, nb: number) => `${word}${nb > 1 ? 's' : ''}`;

/**
 *
 * @param price The price to formatter
 * @returns The formatted price
 */
export const priceFormatter = (price: number) => {
    const formatter = new Intl.NumberFormat('fr-FR', {
        style: 'currency',
        currency: 'EUR',
    });
    return formatter.format(price);
};
