package pl.coderslab.service;

import org.springframework.stereotype.Service;
import pl.coderslab.entity.Author;
import pl.coderslab.repository.AuthorRepository;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class AuthorService {

    private final AuthorRepository authorRepository;

    public AuthorService(AuthorRepository authorRepository) {
        this.authorRepository = authorRepository;
    }

    public void save(Author author) {
        authorRepository.save(author);
    }

    public Optional<Author> findById(Long authorId) {
        return authorRepository.findById(authorId);
    }

    public List<Author> findAll() {
        return authorRepository.findAll();
    }

    public void update(Author author) {
        authorRepository.save(author);
    }

    public void delete(Long authorId) {
        authorRepository.deleteById(authorId);
    }
}
