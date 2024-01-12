import { Box, Paper, Typography } from '@mui/material';
import moment from 'moment';
import { useEffect, useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import { ActionButtons, ShopProducts } from '../components';
import { ShopService } from '../services';
import { Shop } from '../types';
import { useAppContext, useToastContext } from '../context';
import { pluralize } from '../utils';

const DAY: Record<number, string> = {
    1: 'Lundi',
    2: 'Mardi',
    3: 'Mercredi',
    4: 'Jeudi',
    5: 'Vendredi',
    6: 'Samedi',
    7: 'Dimanche',
};

const ShopDetails = () => {
    const { id } = useParams();
    const navigate = useNavigate();
    const { setLoading } = useAppContext();
    const { setToast } = useToastContext();
    const [shop, setShop] = useState<Shop | null>(null);

    const getShop = (shopId: string) => {
        ShopService.getShop(shopId).then((res) => {
            // sort openingHours
            res.data.openingHours = res.data.openingHours.sort((a, b) => a.day - b.day);
            setShop(res.data);
        });
    };

    useEffect(() => {
        id && getShop(id);
    }, [id]);

    const displayHours = (hours: string): string => {
        return moment(hours, 'HH:mm').format('HH:mm');
    };

    const handleDelete = () => {
        setLoading(true);
        id &&
            ShopService.deleteShop(id)
                .then(() => {
                    navigate('/');
                    setToast({ severity: 'success', message: 'La boutique a bien été supprimée' });
                })
                .catch(() => {
                    setToast({ severity: 'error', message: 'Une erreur est survenue lors de la suppresion' });
                })
                .finally(() => {
                    setLoading(false);
                });
    };

    const handleEdit = () => {
        navigate(`/shop/edit/${id}`);
    };

    if (!shop) return <></>;

    return (
        <Paper
            elevation={1}
            sx={{
                position: 'relative',
                padding: 4,
            }}
        >
            <ActionButtons handleDelete={handleDelete} handleEdit={handleEdit} />

            <Typography variant="h3" sx={{ textAlign: 'center', marginBottom: 3 }}>
                {shop.name}
            </Typography>
            <Typography variant="h6">
                Cette boutique comporte {shop.nbProducts} {pluralize('produit', shop.nbProducts)} et {shop.nbCategories}{' '}
                {pluralize('catégorie', shop.nbCategories)}
            </Typography>
            <Typography sx={{ my: 1 }}>
                {shop.inVacations ? 'En congé actuellement' : "N'est pas en congé actuellement"}
            </Typography>
            <Typography sx={{ my: 1 }} color="text.secondary">
                Boutique créée le : {moment(shop.createdAt).format('DD/MM/YYYY')}
            </Typography>

            <Box
                sx={{
                    display: 'flex',
                    flexDirection: 'column',
                    alignItems: 'center',
                    justifyContent: 'space-between',
                    my: 4,
                }}
            >
                <Typography variant="h4" sx={{ mb: 2 }}>
                    Horaires d&apos;ouverture :
                </Typography>
                {shop.openingHours.map((openingHour) => (
                    <Box
                        key={openingHour.id}
                        sx={{
                            width: 200,
                            display: 'flex',
                            flexDirection: 'row',
                            alignItems: 'center',
                            justifyContent: 'space-between',
                        }}
                    >
                        <Typography sx={{ mb: 1.5 }}>{DAY[openingHour.day]}</Typography>
                        <Typography sx={{ mb: 1.5 }}>
                            {displayHours(openingHour?.openAt)} - {displayHours(openingHour?.closeAt)}
                        </Typography>
                    </Box>
                ))}
            </Box>

            <Typography variant="h4" sx={{ textAlign: 'center', mb: 2 }}>
                Les produits :
            </Typography>
            {id && <ShopProducts shopId={id} />}
        </Paper>
    );
};

export default ShopDetails;
