package com.nhom8.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nhom8.entities.User;
import com.nhom8.repositories.UserRepository;

@Controller
public class LogInController {
	@Autowired
	UserRepository userRepository;

	@RequestMapping(value = { "/login" }, method = { RequestMethod.GET })
	public String DangNhap(Model model, final HttpServletRequest request, final HttpServletResponse response) {

		return "admin/login";
	}

	@PostMapping("/DangNhap")
	public String logIn(@ModelAttribute("Login") User user, ModelMap model) {

		System.out.println("Username : " + user.getUserName());
		System.out.println("Password : " + user.getPassWord());
		String username = user.getUserName();
		int id = userRepository.selectIdByUserName(username);
		List<User> admin = userRepository.findAll();

		for (User tk : admin) {
			if (user.getUserName().equals(tk.getUserName()) && user.getPassWord().equals(tk.getPassWord())) {

				userRepository.updateStatusForId(true, id);
				return "redirect:admin/index";
			}
		}
		return "admin/login";
	}
}
