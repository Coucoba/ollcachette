import { Alert, Snackbar } from '@mui/material';
import { useEffect, useState } from 'react';
import { Toast } from '../types';

type Props = {
    toast: Toast;
};

const Toaster = ({ toast }: Props) => {
    const { severity, message } = toast;
    const [open, setOpen] = useState<boolean>(false);

    useEffect(() => {
        message && setOpen(true);
    }, [toast]);

    const handleClose = (event?: React.SyntheticEvent | Event, reason?: string) => {
        if (reason === 'clickaway') {
            return;
        }
        setOpen(false);
    };

    return (
        <Snackbar open={open} autoHideDuration={5000} onClose={handleClose}>
            <Alert onClose={handleClose} severity={severity} sx={{ width: '100%' }}>
                {message}
            </Alert>
        </Snackbar>
    );
};

export default Toaster;
