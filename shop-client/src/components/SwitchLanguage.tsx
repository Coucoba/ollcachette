import { IconButton, Menu, MenuItem } from '@mui/material';
import { useState } from 'react';
import LanguageIcon from '@mui/icons-material/Language';
import Locale from '../types/locale';
import { useAppContext } from '../context';

const SwitchLanguage = () => {
    const { setLocale, locale } = useAppContext();
    const [anchorEl, setAnchorEl] = useState<null | HTMLElement>(null);

    const handleClick = (locale: Locale) => {
        setLocale(locale);
        handleClose();
    };

    const handleMenu = (event: React.MouseEvent<HTMLElement>) => {
        setAnchorEl(event.currentTarget);
    };

    const handleClose = () => {
        setAnchorEl(null);
    };

    return (
        <div>
            <IconButton size="large" onClick={handleMenu} color="inherit">
                <LanguageIcon />
            </IconButton>
            <Menu
                sx={{ mt: '35px' }}
                id="menu-appbar"
                anchorEl={anchorEl}
                anchorOrigin={{
                    vertical: 'top',
                    horizontal: 'right',
                }}
                keepMounted
                transformOrigin={{
                    vertical: 'top',
                    horizontal: 'right',
                }}
                open={Boolean(anchorEl)}
                onClose={handleClose}
            >
                <MenuItem
                    onClick={() => handleClick(Locale.FR)}
                    sx={{ backgroundColor: locale == 'FR' ? '#f2f5f6' : 'white' }}
                >
                    Français
                </MenuItem>
                <MenuItem
                    onClick={() => handleClick(Locale.EN)}
                    sx={{ backgroundColor: locale == 'EN' ? '#f2f5f6' : 'white' }}
                >
                    Anglais
                </MenuItem>
            </Menu>
        </div>
    );
};

export default SwitchLanguage;
