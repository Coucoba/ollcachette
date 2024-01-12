import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import Typography from '@mui/material/Typography';
import { useNavigate } from 'react-router-dom';
import { Category } from '../types';

type Props = {
    category: Category;
};

const CategoryCard = ({ category }: Props) => {
    const navigate = useNavigate();

    return (
        <Card sx={{ cursor: 'pointer' }} onClick={() => navigate(`/category/${category.id}`)}>
            <CardContent>
                <Typography variant="h5" color="text.primary" sx={{ textAlign: 'center' }}>
                    {category.name}
                </Typography>
            </CardContent>
        </Card>
    );
};

export default CategoryCard;
