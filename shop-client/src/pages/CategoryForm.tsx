import { Box, Button, Divider, FormControl, Paper, TextField, Typography } from '@mui/material';
import { useEffect, useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import { useAppContext, useToastContext } from '../context';
import { CategoryService } from '../services';
import { MinimalCategory, ObjectPropertyString } from '../types';

const schema = (category: MinimalCategory) => ({
    name: category.name ? '' : 'Ce champ est requis',
});

const CategoryForm = () => {
    const { id } = useParams();
    const isAddMode = !id;
    const navigate = useNavigate();
    const { setLoading } = useAppContext();
    const { setToast } = useToastContext();
    const [errors, setErrors] = useState<ObjectPropertyString<MinimalCategory>>();
    const [category, setCategory] = useState<MinimalCategory>({
        name: '',
    });

    const getCategory = (categoryId: string) => {
        setLoading(true);
        CategoryService.getCategory(categoryId)
            .then((res) => {
                setCategory({
                    ...res.data,
                    id: id,
                });
            })
            .finally(() => setLoading(false));
    };

    useEffect(() => {
        !isAddMode && id && getCategory(id);
    }, [isAddMode]);

    const createCategory = () => {
        setLoading(true);
        CategoryService.createCategory(category)
            .then(() => {
                navigate('/category');
                setToast({ severity: 'success', message: 'La catégorie a bien été créée' });
            })
            .catch(() => {
                setToast({ severity: 'error', message: 'Une erreur est survenue lors de la création' });
            })
            .finally(() => {
                setLoading(false);
            });
    };

    const editCategory = () => {
        setLoading(true);
        CategoryService.editCategory(category)
            .then(() => {
                navigate(`/category/${id}`);
                setToast({ severity: 'success', message: 'La catégorie a bien été modifiée' });
            })
            .catch(() => {
                setToast({ severity: 'error', message: 'Une erreur est survenue lors de la modification' });
            })
            .finally(() => {
                setLoading(false);
            });
    };

    const validate = () => {
        setErrors(schema(category));
        return Object.values(schema(category)).every((o) => o == '');
    };

    const handleSubmit = () => {
        if (!validate()) return;
        if (isAddMode) {
            createCategory();
        } else {
            editCategory();
        }
    };

    return (
        <Paper elevation={1} sx={{ padding: 4 }}>
            <Typography variant="h2" sx={{ marginBottom: 3, textAlign: 'center' }}>
                {isAddMode ? 'Ajouter une catégorie' : 'Modifier la catégorie'}
            </Typography>

            <FormControl
                sx={{
                    display: 'flex',
                    flexDirection: 'column',
                    ml: 'auto',
                    mr: 'auto',
                    width: '70%',
                    mb: 2,
                }}
            >
                <Divider>Informations de la catégorie</Divider>
                <TextField
                    autoFocus
                    required
                    label="Nom"
                    value={category.name}
                    onChange={(e) => setCategory({ ...category, name: e.target.value })}
                    error={!!errors?.name}
                    helperText={errors?.name}
                    sx={{ my: 2, width: '75%', ml: 'auto', mr: 'auto' }}
                />
            </FormControl>

            <Box sx={{ display: 'flex', justifyContent: 'center' }}>
                <Button variant="contained" onClick={handleSubmit}>
                    Valider
                </Button>
            </Box>
        </Paper>
    );
};

export default CategoryForm;
