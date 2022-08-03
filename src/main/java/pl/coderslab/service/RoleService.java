package pl.coderslab.service;

import org.springframework.stereotype.Service;
import pl.coderslab.entity.Role;
import pl.coderslab.repository.RoleRepository;

import java.util.Collection;

@Service
public class RoleService {

    private final RoleRepository roleRepository;

    public RoleService(RoleRepository roleRepository) {
        this.roleRepository = roleRepository;
    }

    public Collection<Role> findAll() {
        return roleRepository.findAll();
    }
}
