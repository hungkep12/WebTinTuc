package com.nhom8.controller.web;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nhom8.Service.CategoriesService;
import com.nhom8.Service.UserService;
import com.nhom8.entities.User;
import com.nhom8.repositories.UserRepository;

@Controller
public class EditUserController {

	@Autowired
	CategoriesService categoriesService;
	@Autowired
	UserService userService;
	@Autowired
	UserRepository userRepository;
	
	@Value("${file.upload.path}")
	private String attachmentPath;

	@RequestMapping(value = { "/information-user/{id}" }, method = { RequestMethod.GET })
	public String editUser(@PathVariable int id, final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {
		if (CheckLoginUser.Check(request) == false) {
			return "redirect:/index";
		}
		model.addAttribute("user", userRepository.getOne(id));
		return "web/user-information";

	}

	// Lưu thông tin tài khoản
	@RequestMapping(value = { "/edit-user" }, method = { RequestMethod.POST })
	public String EditUser(@RequestParam("postImage") MultipartFile postImage, @ModelAttribute("user") User user,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IllegalStateException, IOException {
		if (CheckLoginUser.Check(request) == false) {
			return "redirect:/index";
		}
		HttpSession session = request.getSession();
		if (postImage != null && postImage.getSize() > 0) {
			
			user.setImage(postImage.getOriginalFilename());

			// lưu file vào folder trên server.
			// E:/web-tintuc/Nhom13-web/src/main/resources/META-INF/img/upload/abc.jpeg

			postImage.transferTo(new File(attachmentPath + "/" + postImage.getOriginalFilename()));
		}else {
			user.setImage("avatar.png");
		}
		user.setStt(true);
		String password = user.getPass();
		String hash = BCrypt.hashpw(password, BCrypt.gensalt(12));
		user.setPass(hash);
		
		userRepository.save(user);

		session.setAttribute("name", user.getUserName());
		session.setAttribute("pass", user.getPass());

		session.setAttribute("email", user.getEmail());
		session.setAttribute("ID", user.getId());
		session.setAttribute("image", user.getImage());

		model.addAttribute("status", "success");

		return "web/user-information";
	}
}
