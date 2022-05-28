package org.sweater.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.sweater.domain.Message;
import org.sweater.domain.User;
import org.sweater.domain.dto.MessageDto;
import org.sweater.repos.MessageRepo;

import javax.persistence.EntityManager;

@Service
public class MessageService {
    @Autowired
    MessageRepo messageRepo;

    @Autowired
    private EntityManager em;

    public Page<MessageDto> messageList(Pageable pageable, String filter, User user) {
        if(filter != null && !filter.isEmpty()) {
            return messageRepo.findByTag(filter, pageable, user);
        } else {
            return messageRepo.findAll(pageable, user);
        }
    }

    public Page<MessageDto> messageListForUser(Pageable pageable, User currentUser, User author) {
        return messageRepo.findByUser(pageable, author, currentUser);
    }
}
