import { createContext, useContext, useState } from 'react';
import { Toaster } from '../components';
import { Toast } from '../types';

interface ToastContextInterface {
    setToast: (toast: Toast) => void;
}

const ToastContext = createContext<ToastContextInterface>({
    setToast: () => {
        // empty function
    },
});

type Props = {
    children: JSX.Element;
};

export function ToastProvider({ children }: Props) {
    const [toast, setToast] = useState<Toast>({
        severity: 'success',
        message: '',
    });

    return (
        <ToastContext.Provider
            value={{
                setToast,
            }}
        >
            {children}
            <Toaster toast={toast} />
        </ToastContext.Provider>
    );
}

export const useToastContext = () => useContext(ToastContext);
