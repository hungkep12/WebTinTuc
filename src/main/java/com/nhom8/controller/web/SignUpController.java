package com.nhom8.controller.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nhom8.Service.UserService;
import com.nhom8.entities.User;
import com.nhom8.repositories.UserRepository;
@Controller
public class SignUpController {
	@Autowired
	UserRepository userRepository;
	@Autowired
	UserService userService;
	
	@RequestMapping(value = { "/sign_up" }, method = { RequestMethod.GET })
	public String DangNhap(Model model, final HttpServletRequest request, final HttpServletResponse response) 
	{

		return "web/sign-up";
	}
	@PostMapping("/Dangky")
	public String signUp( @ModelAttribute("user") User user, BindingResult result, 
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
					throws IllegalStateException, IOException{
		user.setStt(false);
		user.setImage("avatar.png");
		
		String password = user.getPass();
		String hash = BCrypt.hashpw(password, BCrypt.gensalt(12));
		user.setPass(hash);

		if(!userService.Insert(user)) {
			result.addError(new FieldError("user", "email", "Email đã tồn tại!"));
			return "web/sign-up";
		}
		return "redirect:/index";
	}
}
