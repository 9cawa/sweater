package com.aksenov.repos;

import com.aksenov.domain.Message;
import com.aksenov.domain.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MessageRepository extends CrudRepository<Message, Long> {
    List<Message> findByTag(String tag);

    List<Message> findAllByOrderByIdDesc();

    List<Message> findAllByAuthor(User user);
}
