package com.nhom8.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nhom8.repositories.UserRepository;

@Controller
public class AdminController {
	@Autowired
	UserRepository userRepository;

	@RequestMapping(value = { "/admin" }, method = { RequestMethod.GET })
	public String admin(Model model, final HttpServletRequest request, final HttpServletResponse response) {
		model.addAttribute("user", userRepository.findAll());
		return "admin/index";
	}
}
