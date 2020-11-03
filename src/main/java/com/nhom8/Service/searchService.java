package com.nhom8.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nhom8.entities.Post;
import com.nhom8.repositories.PostRepository;

@Service
public class searchService {

	@Autowired
	PostRepository postRepository;

	@Autowired

	public PostRepository getPostRepository() {
		return postRepository;
	}

	@Autowired

	public void setPostRepository(PostRepository postRepository) {
		this.postRepository = postRepository;
	}

	public List<Post> findByNameContaining(String title) {
		return postRepository.findByTitleLike("%" + title + "%");
	}
}
