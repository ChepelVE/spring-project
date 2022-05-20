package org.sweater.repos;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;
import org.sweater.domain.Message;
import org.sweater.domain.User;

public interface MessageRepo extends CrudRepository<Message, Long> {
    Page<Message> findByTag(String tag, Pageable pageable);

    Page<Message> findAll(Pageable pageable);

    Page<Message> findByAuthor(User author, Pageable pageable);
}
