package com.nhom8.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/about")
	public String hello(Model model) {
		return "about";
	}
	@RequestMapping("/blank")
	public String blank(Model model) {
		return "blank";
	}
	@RequestMapping("/blog-post")
	public String blog_post(Model model) {
		return "blog-post";
	}
	@RequestMapping("/category")
	public String category(Model model) {
		return "category";
	}
	@RequestMapping("/contact")
	public String contact(Model model) {
		return "contact";
	}
	@RequestMapping(value={"/","/index"})
	public String index(Model model) {
		return "index";
	}
	
}
