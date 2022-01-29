package com.ea.webclient.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ea.webclient.entity.Post;

public interface PostDao extends JpaRepository<Post, Integer>{

}
