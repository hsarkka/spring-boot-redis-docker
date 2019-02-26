package com.example.demo.service;

import com.example.demo.model.User;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Cacheable("users")
    public User getUser(long id) {
        System.err.println("Getting user " + id);

        User user = new User();
        user.setId(id);
        user.setName("User " + id);
        return user;
    }

}
