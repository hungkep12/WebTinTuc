package com.nhom8.controller.web;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nhom8.Service.CategoriesService;
import com.nhom8.Service.PostService;
import com.nhom8.Service.UserService;
import com.nhom8.entities.Categories;
import com.nhom8.entities.Post;
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
	@Autowired
	CategoriesService categoriesService;
	@Autowired
	PostService postService;
	@Autowired
	UserService userService;
	
	@RequestMapping("/category/{name_category}")
	public String category(@PathVariable String name_category, @ModelAttribute("category") Categories categories,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {

		model.addAttribute("categoryTitle", categoriesService.findNameCategory(name_category));
		model.addAttribute("categories", categoriesService.findByStatus(true));
		model.addAttribute("mostPost", postService.findAllByView());
		model.addAttribute("post", postService.findPostByNameCategory(name_category));
		//model.addAttribute("user", userService.findAllByEmail(com.nhom8.controller.LogInController.email));

		return "web/category";
	}

	@RequestMapping(value = { "/", "/index" }, method = { RequestMethod.GET })
	public String index(Model model, final HttpServletRequest request, final HttpServletResponse response) {
		System.out.println("================================= Index ================================================");

		model.addAttribute("post", postService.findAll(true,6,0));
		//Page<Post> page = postService.findAllByView(PageRequest.of(0,5));
		model.addAttribute("mostPost", postService.findAllByView());

		model.addAttribute("categories", categoriesService.findByStatus(true));

		return "web/index";
	}
	
	
}
