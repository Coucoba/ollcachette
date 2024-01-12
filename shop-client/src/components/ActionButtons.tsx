import { Box, Fab } from '@mui/material';
import DeleteIcon from '@mui/icons-material/Delete';
import EditIcon from '@mui/icons-material/Edit';

type Props = {
    handleEdit: () => void;
    handleDelete: () => void;
};

const ActionButtons = ({ handleEdit, handleDelete }: Props) => (
    <Box sx={{ position: 'absolute', top: 10, right: 10 }}>
        <Fab size="small" color="primary" aria-label="edit" onClick={handleEdit} sx={{ mr: 1 }}>
            <EditIcon />
        </Fab>
        <Fab size="small" color="primary" aria-label="delete" onClick={handleDelete}>
            <DeleteIcon />
        </Fab>
    </Box>
);

export default ActionButtons;
