package com.victorinterian.blog.services;
import java.util.List;

import com.victorinterian.blog.models.User;

public interface UserService {


    public List<User> all();
     public User find(Long id);
     public Boolean save(User user);
	public User findByUsername(String username);


}

