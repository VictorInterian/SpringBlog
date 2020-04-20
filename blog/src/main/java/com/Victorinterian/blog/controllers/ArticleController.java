package com.victorinterian.blog.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ArticleController {

        @RequestMapping(value = "/articles", method = RequestMethod.GET)
        public String index() {
            return "articles/index";

        }
        @RequestMapping(value = "/articles/search", method = RequestMethod.GET)
        public String search(){
            return "articles/search";

        }

}