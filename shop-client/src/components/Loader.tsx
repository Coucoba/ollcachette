import { Backdrop, CircularProgress } from '@mui/material';
import { useAppContext } from '../context';

const Loader = () => {
    const { loading } = useAppContext();

    return loading ? (
        <Backdrop open={true} sx={{ color: '#FFF' }}>
            <CircularProgress color="inherit" />
        </Backdrop>
    ) : null;
};

export default Loader;
