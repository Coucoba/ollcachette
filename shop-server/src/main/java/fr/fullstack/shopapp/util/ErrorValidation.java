package fr.fullstack.shopapp.util;

import org.springframework.validation.Errors;
import org.springframework.validation.ObjectError;

import java.util.List;

public class ErrorValidation {
    public static String getErrorValidationMessage(Errors errors) {
        String message = "";
        List<ObjectError> objectErrors = errors.getAllErrors();
        for (int i = 0; i < errors.getErrorCount(); i++) {
            ObjectError error = objectErrors.get(i);
            message += error.getDefaultMessage() + "; ";
        }
        return message.substring(0, message.length() - 2);
    }
}
