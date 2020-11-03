package com.nhom8.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nhom8.repositories.CategoriesRepository;
import com.nhom8.repositories.CommentRepository;
import com.nhom8.repositories.ContactRepository;
import com.nhom8.repositories.PostRepository;
import com.nhom8.repositories.UserRepository;

@Controller
public class CommentController {
	@Autowired
	CategoriesRepository categoriesRepository;
	@Autowired
	PostRepository postRepository;
	@Autowired
	CommentRepository commentRepository;
	@Autowired
	ContactRepository contactRepository;
	@Autowired
	UserRepository userRepository;
	@RequestMapping("/blog-post/{title}")
	public String blog_post(@PathVariable String title, Model model, final HttpServletRequest request,
			final HttpServletResponse response) {

		//tìm kiếm theo title trong tbl_post
		model.addAttribute("post", postRepository.findByTitleLike(title));
		model.addAttribute("categories", categoriesRepository.findAll());
		model.addAttribute("mostPost", postRepository.findAllByView());
		
		return "blog-post";
	}
}
