package com.victorinterian.blog.db;

import com.victorinterian.blog.models.User;

import org.hibernate.cfg.Configuration;

public class HibernateConfig  {

private static Configuration configuration;

public static Configuration getConfiguration() {
       if (configuration == null) {
           try {
               configure();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return configuration;
    }

    private static Configuration configure() {
        configuration = new Configuration();

        // Configure
        configuration.addAnnotatedClass(User.class);
        //---------------

        return configuration;
    }
}