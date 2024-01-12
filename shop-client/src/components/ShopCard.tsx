import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Typography from '@mui/material/Typography';
import moment from 'moment';
import { useNavigate } from 'react-router-dom';
import { Shop } from '../types';
import { pluralize } from '../utils';

type Props = {
    shop: Shop;
};

const ShopCard = ({ shop }: Props) => {
    const navigate = useNavigate();

    const handleClick = () => {
        navigate(`/shop/${shop.id}`);
    };

    return (
        <Card sx={{ minWidth: 275, cursor: 'pointer' }} onClick={handleClick}>
            <CardContent>
                <Typography variant="h4" color="text.primary" gutterBottom sx={{ textAlign: 'center' }}>
                    {shop.name}
                </Typography>
                <Typography variant="h6">
                    {shop.nbProducts} {pluralize('produit', shop.nbProducts)} et {shop.nbCategories}{' '}
                    {pluralize('catégorie', shop.nbCategories)}
                </Typography>
                <Typography sx={{ my: 1.5 }} color="text.secondary">
                    Créée le : {moment(shop.createdAt).format('DD/MM/YYYY')}
                </Typography>
                <Typography>En congé : {shop.inVacations ? 'oui' : 'non'}</Typography>
            </CardContent>
        </Card>
    );
};

export default ShopCard;
