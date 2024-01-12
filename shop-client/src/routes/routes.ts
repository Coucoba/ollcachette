import {
    Categories,
    CategoryDetails,
    Home,
    ProductDetails,
    ProductForm,
    Products,
    ShopDetails,
    ShopForm,
} from '../pages';
import CategoryForm from '../pages/CategoryForm';

type Routes = {
    name: string;
    path: string;
    element: () => JSX.Element;
}[];

const routes: Routes = [
    {
        name: 'Home',
        path: '/',
        element: Home,
    },
    {
        name: 'ShopDetails',
        path: '/shop/:id',
        element: ShopDetails,
    },
    {
        name: 'CreateShop',
        path: '/shop/create',
        element: ShopForm,
    },
    {
        name: 'EditShop',
        path: '/shop/edit/:id',
        element: ShopForm,
    },
    {
        name: 'Products',
        path: '/product',
        element: Products,
    },
    {
        name: 'ProductDetails',
        path: '/product/:id',
        element: ProductDetails,
    },
    {
        name: 'CreateProduct',
        path: '/product/create',
        element: ProductForm,
    },
    {
        name: 'EditProduct',
        path: '/product/edit/:id',
        element: ProductForm,
    },
    {
        name: 'Categories',
        path: '/category',
        element: Categories,
    },
    {
        name: 'CategoryDetails',
        path: '/category/:id',
        element: CategoryDetails,
    },
    {
        name: 'CreateCategory',
        path: '/category/create',
        element: CategoryForm,
    },
    {
        name: 'EditCategory',
        path: '/category/edit/:id',
        element: CategoryForm,
    },
];

export default routes;
