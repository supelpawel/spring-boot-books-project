package pl.coderslab.converter;

import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import pl.coderslab.entity.Author;
import pl.coderslab.entity.Role;

@Component
public class StringToRoleConverter implements Converter<String, Role> {

    @Override
    public Role convert(String source) {

        try {

            long roleId = Long.parseLong(source);

            Role role = new Role();
            role.setId(roleId);

            return role;
        } catch (NumberFormatException e) {

        }
        return null;
    }
}
