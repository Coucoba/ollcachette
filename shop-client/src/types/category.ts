type CategoryBase = {
    name: string;
};

export type Category = {
    id: number;
} & CategoryBase;

export type MinimalCategory = {
    id?: string;
} & CategoryBase;
