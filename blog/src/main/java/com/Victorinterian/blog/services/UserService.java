package com.victorinterian.blog.services;

import com.victorinterian.blog.models.User;

public interface UserService {

     public User find(Long id);
     public Boolean save(User user);


}

