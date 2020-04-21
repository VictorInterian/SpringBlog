package com.victorinterian.blog.implementations;

import com.victorinterian.blog.models.Article;
import com.victorinterian.blog.repositories.ArticleRepository;
import com.victorinterian.blog.services.ArticleService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ArticleServiceimpl implements ArticleService {

    @Autowired
    private ArticleRepository repository;

    public Article find(Long id){
        return repository.getOne(id);
    }

    public Boolean save(Article article){
        try {
            repository.save(article);
            return true;
        } catch (Exception e) {
            //TODO: handle exception
            return false;
        }
    }

}