import { createContext, useContext, useState } from 'react';
import Locale from '../types/locale';

interface AppContextInterface {
    loading: boolean;
    setLoading: (load: boolean) => void;
    locale: Locale;
    setLocale: (locale: Locale) => void;
}

const AppContext = createContext<AppContextInterface>({
    loading: false,
    setLoading: () => {
        // empty function
    },
    locale: Locale.FR,
    setLocale: () => {
        // empty function
    },
});

type Props = {
    children: JSX.Element;
};

export function AppProvider({ children }: Props) {
    const [loading, setLoading] = useState<boolean>(false);
    const [locale, setLocale] = useState<Locale>(Locale.FR);

    return (
        <AppContext.Provider
            value={{
                loading,
                setLoading,
                locale,
                setLocale,
            }}
        >
            {children}
        </AppContext.Provider>
    );
}

export const useAppContext = () => useContext(AppContext);
