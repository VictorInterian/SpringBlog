package com.victorinterian.blog.implementations;

import com.victorinterian.blog.models.User;
import com.victorinterian.blog.repositories.UserRepository;
import com.victorinterian.blog.services.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {


    @Autowired
    private UserRepository repository;


    public User find(Long id) {
         return repository.getOne(id);
    }


    public Boolean save(User user) {
         try {
             repository.save(user);
             return true;
         } catch (Exception e) {
             //Log excep
             return false;
         }
    }

}