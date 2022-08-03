package pl.coderslab.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.entity.Publisher;
import pl.coderslab.repository.PublisherRepository;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class PublisherService {

    private final PublisherRepository publisherRepository;

    public PublisherService(PublisherRepository publisherRepository) {
        this.publisherRepository = publisherRepository;
    }

    public void save(Publisher publisher) {
        publisherRepository.save(publisher);
    }

    public Optional<Publisher> findById(Long id) {
        return publisherRepository.findById(id);
    }

    public List<Publisher> findAll() {
        return publisherRepository.findAll();
    }

    public void update(Publisher publisher) {
        publisherRepository.save(publisher);
    }

    public void delete(Long id) {
        publisherRepository.deleteById(id);
    }
}
