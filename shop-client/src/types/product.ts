import { Category } from './category';
import { Shop } from './shop';

type LocalizedProductBase = {
    locale: string;
    name: string;
    description: string;
};

export type LocalizedProduct = {
    id: number;
} & LocalizedProductBase;

export type MinimalLocalizedProduct = {
    id?: number;
} & LocalizedProductBase;

type ProductBase = {
    price: number;
    shop: Shop | null;
    categories: Category[];
};

export type Product = {
    id: number;
    localizedProducts: LocalizedProduct[];
} & ProductBase;

export type MinimalProduct = {
    id?: string;
    localizedProducts: MinimalLocalizedProduct[];
} & ProductBase;

export type FormattedProduct = {
    id: number;
    name: string;
    description: string;
} & ProductBase;
