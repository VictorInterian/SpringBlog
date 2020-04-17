package com.victorinterian.blog.controllers;

import com.victorinterian.blog.db.HibernateSession;
import com.victorinterian.blog.models.User;

import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
    @RequestMapping("/")
    public String index() {
        User user = new User();
        user.setFirstName("Victor");
        user.setLastName("Victor");
        user.setUsername("victorinterian");
        user.setPassword("12345");

        Session session = HibernateSession.open();
        session.beginTransaction();
        session.save(user);
        session.getTransaction().commit();
        session.close();




        return "index";

    }



}