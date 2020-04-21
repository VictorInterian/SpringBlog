package com.victorinterian.blog.services;

import com.victorinterian.blog.models.Article;

public interface ArticleService {

    public Article find(Long id);
    public Boolean save(Article article);
}