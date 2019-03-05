package com.example.demo.service;

import com.example.demo.model.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private Logger log = LoggerFactory.getLogger(this.getClass());

    @Cacheable("users")
    public User getUser(long id) {
        log.debug("Getting user {}", id);

        User user = new User();
        user.setId(id);
        user.setName("User " + id);
        return user;
    }

}
