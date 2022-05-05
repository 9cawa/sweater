package com.aksenov.repos;

import com.aksenov.domain.Message;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface MessageRepository extends JpaRepository<Message, Long> {
    List<Message> findByTag(String tag);

    List<Message> findAllByOrderByIdDesc();
}
