package fr.fullstack.shopapp.validation;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Documented
@Constraint(validatedBy = StringEnumerationValidator.class)
@Target({
        ElementType.METHOD,
        ElementType.FIELD,
        ElementType.ANNOTATION_TYPE,
        ElementType.CONSTRUCTOR,
        ElementType.PARAMETER,
        ElementType.TYPE_USE
})
@Retention(RetentionPolicy.RUNTIME)
public @interface StringEnumeration {
    Class<? extends Enum<?>> enumClass();

    Class<?>[] groups() default {};

    String message() default "{com.xxx.bean.validation.constraints.StringEnumeration.message}";

    Class<? extends Payload>[] payload() default {};

}
