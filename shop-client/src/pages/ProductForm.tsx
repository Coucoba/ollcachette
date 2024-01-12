/* eslint-disable @typescript-eslint/no-explicit-any */
import { Box, Button, Divider, FormControl, InputAdornment, Paper, TextField, Typography } from '@mui/material';
import { useEffect, useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import { SelectPaginate } from '../components';
import { useAppContext, useToastContext } from '../context';
import { CategoryService, ProductService, ShopService } from '../services';
import { MinimalProduct } from '../types';
import Locale from '../types/locale';
import { formatterProductForm, getLocalizedProduct } from '../utils';

const schema = (product: MinimalProduct) => ({
    nameFr: product.localizedProducts[0].name ? '' : 'Ce champ est requis',
    nameEn:
        !product.localizedProducts[1].name && !!product.localizedProducts[1].description
            ? 'Une description est fournie en anglais donc le nom est requis'
            : '',
    price: product.price >= 0 ? '' : 'Le prix ne peut pas être un nombre négatif',
});

const ProductForm = () => {
    const { id } = useParams();
    const isAddMode = !id;
    const navigate = useNavigate();
    const { setLoading } = useAppContext();
    const { setToast } = useToastContext();
    const [errors, setErrors] = useState<any>({});
    const [product, setProduct] = useState<MinimalProduct>({
        price: 0,
        shop: null,
        categories: [],
        localizedProducts: [
            {
                locale: Locale.FR,
                name: '',
                description: '',
            },
            {
                locale: Locale.EN,
                name: '',
                description: '',
            },
        ],
    });

    const getProduct = (productId: string) => {
        setLoading(true);
        ProductService.getProduct(productId)
            .then((res) => {
                if (res.data.localizedProducts.length < 2) {
                    const localizedProducts = [
                        ...res.data.localizedProducts,
                        { locale: Locale.EN, name: '', description: '' },
                    ];
                    setProduct({ ...res.data, id: id, localizedProducts });
                } else {
                    setProduct({ ...res.data, id: id });
                }
            })
            .finally(() => setLoading(false));
    };

    useEffect(() => {
        !isAddMode && id && getProduct(id);
    }, [isAddMode]);

    const createProduct = (productToCreate: MinimalProduct) => {
        setLoading(true);
        ProductService.createProduct(productToCreate)
            .then(() => {
                navigate('/product');
                setToast({ severity: 'success', message: 'Le produit a bien été créé' });
            })
            .catch(() => {
                setToast({ severity: 'error', message: 'Une erreur est survenue lors de la création' });
            })
            .finally(() => {
                setLoading(false);
            });
    };

    const editProduct = (productToEdit: MinimalProduct) => {
        setLoading(true);
        ProductService.editProduct(productToEdit)
            .then(() => {
                navigate(`/product/${id}`);
                setToast({ severity: 'success', message: 'Le produit a bien été modifié' });
            })
            .catch(() => {
                setToast({ severity: 'error', message: 'Une erreur est survenue lors de la modification' });
            })
            .finally(() => {
                setLoading(false);
            });
    };

    const validate = () => {
        setErrors(schema(product));
        return Object.values(schema(product)).every((o) => o == '');
    };

    const handleSubmit = () => {
        if (!validate()) return;
        const formatizedProduct = formatterProductForm(product);
        if (isAddMode) {
            createProduct(formatizedProduct);
        } else {
            editProduct(formatizedProduct);
        }
    };

    const handleChange = (locale: Locale, key: string, value: string) => {
        const localizedProduct = getLocalizedProduct(product.localizedProducts, locale);
        const newLocalizedProduct = {
            ...localizedProduct,
            [key]: value,
        };
        const newLocalizedProducts = product.localizedProducts.map((o) =>
            Object.values(o).includes(locale) ? newLocalizedProduct : o,
        );
        setProduct({ ...product, localizedProducts: newLocalizedProducts });
    };

    const setPrice = (price: string) => {
        const convertedPrice = parseFloat(price);
        if (Number.isNaN(convertedPrice)) {
            setProduct({ ...product, price: 0 });
            return;
        }
        setProduct({ ...product, price: Number(convertedPrice.toFixed(2)) });
    };

    const setShop = (shop: any) => {
        const newShop = shop.name === 'Aucune' ? null : shop;
        setProduct({ ...product, shop: newShop });
    };

    const setCategories = (categories: any) => {
        const newCategories = categories;
        setProduct({ ...product, categories: newCategories });
    };

    return (
        <Paper elevation={1} sx={{ padding: 4 }}>
            <Typography variant="h2" sx={{ marginBottom: 3, textAlign: 'center' }}>
                {isAddMode ? 'Ajouter un produit' : 'Modifier le produit'}
            </Typography>

            <FormControl sx={{ display: 'block', ml: 'auto', mr: 'auto', width: '75%', mb: 3 }}>
                <Divider>Nom du produit</Divider>
                <Box sx={{ display: 'flex', flexDirection: 'row', gap: 4, mt: 2, mb: 6 }}>
                    <TextField
                        autoFocus
                        required
                        label="Nom en français"
                        value={getLocalizedProduct(product.localizedProducts, Locale.FR).name}
                        onChange={(e) => handleChange(Locale.FR, 'name', e.target.value)}
                        fullWidth
                        error={!!errors.nameFr}
                        helperText={errors.nameFr}
                        sx={{ width: '50%' }}
                    />
                    <TextField
                        autoFocus
                        label="Nom en anglais"
                        value={getLocalizedProduct(product.localizedProducts, Locale.EN).name}
                        onChange={(e) => handleChange(Locale.EN, 'name', e.target.value)}
                        fullWidth
                        error={!!errors.nameEn}
                        helperText={errors.nameEn}
                        sx={{ width: '50%' }}
                    />
                </Box>

                <Divider>Description</Divider>
                <Box sx={{ display: 'flex', flexDirection: 'row', gap: 4, mt: 2, mb: 6 }}>
                    <TextField
                        autoFocus
                        multiline
                        rows={2}
                        label="Description en français"
                        value={getLocalizedProduct(product.localizedProducts, Locale.FR).description}
                        onChange={(e) => handleChange(Locale.FR, 'description', e.target.value)}
                        fullWidth
                        sx={{ width: '50%' }}
                    />

                    <TextField
                        autoFocus
                        multiline
                        rows={2}
                        label="Description en anglais"
                        value={getLocalizedProduct(product.localizedProducts, Locale.EN).description}
                        onChange={(e) => handleChange(Locale.EN, 'description', e.target.value)}
                        fullWidth
                        sx={{ width: '50%' }}
                    />
                </Box>

                <Divider>Informations supplémentaires</Divider>
                <Box sx={{ display: 'flex', flexDirection: 'row', gap: 4, mt: 2, mb: 3 }}>
                    <TextField
                        autoFocus
                        required
                        type="number"
                        label="Prix"
                        value={product.price.toString()}
                        onChange={(e) => setPrice(e.target.value)}
                        fullWidth
                        InputProps={{
                            endAdornment: <InputAdornment position="end">€</InputAdornment>,
                        }}
                        error={!!errors.price}
                        helperText={errors.price}
                        sx={{ width: '50%' }}
                    />

                    <Box sx={{ width: '50%' }}>
                        <SelectPaginate
                            value={product.shop}
                            onChange={setShop}
                            placeholder="Boutique"
                            refetch={ShopService.getShops}
                            defaultLabel="Aucune"
                        />
                    </Box>
                </Box>

                <Box sx={{ mt: 2 }}>
                    <SelectPaginate
                        isMulti
                        value={product.categories}
                        onChange={setCategories}
                        placeholder="Catégories"
                        refetch={CategoryService.getCategories}
                        defaultLabel="Aucune"
                    />
                </Box>
            </FormControl>

            <Box sx={{ display: 'flex', justifyContent: 'center' }}>
                <Button variant="contained" onClick={handleSubmit}>
                    Valider
                </Button>
            </Box>
        </Paper>
    );
};

export default ProductForm;
