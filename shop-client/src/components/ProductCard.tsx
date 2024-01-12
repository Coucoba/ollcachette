import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Typography from '@mui/material/Typography';
import { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { useAppContext } from '../context';
import { FormattedProduct, Product } from '../types';
import { formatterLocalizedProduct, priceFormatter } from '../utils';

type Props = {
    product: Product;
    displayShop?: boolean;
};

const ProductCard = ({ product, displayShop = false }: Props) => {
    const navigate = useNavigate();
    const { locale } = useAppContext();
    const [formattedProduct, setFormattedProduct] = useState<FormattedProduct>(
        formatterLocalizedProduct(product, locale),
    );

    useEffect(() => setFormattedProduct(formatterLocalizedProduct(product, locale)), [locale]);

    return (
        <Card
            sx={{ minWidth: 275, height: displayShop ? 270 : 230, cursor: 'pointer' }}
            onClick={() => navigate(`/product/${formattedProduct.id}`)}
        >
            <CardContent>
                <Typography variant="h4" color="text.primary" gutterBottom>
                    {formattedProduct.name}
                </Typography>
                <Typography variant="h6">Prix : {priceFormatter(formattedProduct.price)}</Typography>
                {formattedProduct.description && (
                    <Typography sx={{ mt: 1.5, maxHeight: 50, overflow: 'hidden' }} color="text.secondary">
                        {formattedProduct.description}
                    </Typography>
                )}
                {displayShop && (
                    <Typography sx={{ mt: 1.5 }}>Boutique : {formattedProduct.shop?.name ?? 'Aucune'}</Typography>
                )}
                <Typography sx={{ mt: 1.5, fontStyle: 'italic' }}>
                    Catégories : {''}
                    {formattedProduct.categories.length === 0
                        ? 'Aucune'
                        : formattedProduct.categories.map((cat, index) => (
                              <span key={cat.id}>
                                  {cat.name}
                                  {index === formattedProduct.categories.length - 1 ? '' : ', '}
                              </span>
                          ))}
                </Typography>
            </CardContent>
        </Card>
    );
};

export default ProductCard;
