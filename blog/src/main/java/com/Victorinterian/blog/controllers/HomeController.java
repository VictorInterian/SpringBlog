package com.victorinterian.blog.controllers;

import com.victorinterian.blog.models.User;
import com.victorinterian.blog.services.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {


    @Autowired
    private UserService service;

    @RequestMapping("/")
    public String index() {
        //return "index";

        User user = new User();
        user.setFirstName("Victor");
        user.setLastName("Cavazos");
        user.setUsername("VictorInterian");
        user.setPassword("12345");

        service.save(user);



        return "bootstrap";

    }



}