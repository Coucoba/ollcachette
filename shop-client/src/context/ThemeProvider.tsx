import { createTheme } from '@mui/material';
import { blueGrey, lightBlue } from '@mui/material/colors';

const myTheme = createTheme({
    palette: {
        primary: {
            light: blueGrey[300],
            main: blueGrey[500],
            dark: blueGrey[700],
        },
        secondary: {
            light: lightBlue[50],
            main: lightBlue[200],
            dark: lightBlue[300],
        },
    },
});

export default myTheme;
