package com.nhom8.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nhom8.entities.Categories;
import com.nhom8.repositories.CategoriesRepository;
import com.nhom8.repositories.CommentRepository;
import com.nhom8.repositories.ContactRepository;
import com.nhom8.repositories.PostRepository;
import com.nhom8.repositories.UserRepository;

@Controller
public class HomeController {
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

	@RequestMapping("/category/{name_category}")
	public String category(@PathVariable String name_category, @ModelAttribute("category") Categories categories,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {

		model.addAttribute("categoryTitle", categoriesRepository.findNameCategory(name_category));
		model.addAttribute("categories", categoriesRepository.findAll());
		model.addAttribute("mostPost", postRepository.findAllByView());
		model.addAttribute("post", postRepository.findPostByNameCateogry(name_category));

		return "category";
	}

	@RequestMapping(value = { "/", "/index" }, method = { RequestMethod.GET })
	public String index(Model model, final HttpServletRequest request, final HttpServletResponse response) {
		System.out.println("================================= Index ================================================");

		model.addAttribute("post", postRepository.findAll());
		model.addAttribute("mostPost", postRepository.findAllByView());

		model.addAttribute("categories", categoriesRepository.findAll());

		Date dNow = new Date();
		SimpleDateFormat ft = new SimpleDateFormat("mm");

		System.out.println("Date hien tai: " + ft.format(dNow));
		// model.addAttribute("postRandom", postRepository.findPostRandom());
		// các bài đăng lấy bằng random

		return "index";
	}

}
