package com.nhom8.controller.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nhom8.Service.CategoriesService;
import com.nhom8.Service.PostService;
import com.nhom8.repositories.CategoriesRepository;
import com.nhom8.repositories.CommentRepository;
import com.nhom8.repositories.ContactRepository;
import com.nhom8.repositories.PostRepository;
import com.nhom8.repositories.UserRepository;

@Controller
public class AboutController {
	
	@Autowired
	PostService postService;
	@Autowired
	ContactRepository contactRepository;
	@Autowired
	UserRepository userRepository;
	@Autowired
	CategoriesService categoriesService;

	@RequestMapping("/about")
	public String hello(final Model model, final HttpServletRequest request, final HttpServletResponse response) {

		model.addAttribute("mostPost", postService.findAllByView());
		model.addAttribute("categories", categoriesService.findByStatus(true));

		return "web/about";
	}
}
