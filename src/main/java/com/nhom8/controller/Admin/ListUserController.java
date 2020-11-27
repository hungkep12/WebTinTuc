package com.nhom8.controller.Admin;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nhom8.Service.UserService;
import com.nhom8.entities.User;
import com.nhom8.model.UserRequest;
import com.nhom8.repositories.UserRepository;

@Controller
public class ListUserController {
	@Value("${file.upload.path}")
	private String attachmentPath;
	@Autowired
	UserRepository userRepository;
	@Autowired
	UserService userService;

//	Danh sách người dùng
	@RequestMapping(value = { "/admin/data-tables-user-list" }, method = { RequestMethod.GET })
	public String dataTablesUserList(Model model, final HttpServletRequest request,
			final HttpServletResponse response) {
		if (CheckLogIn.Check(request) == false) {
			return "redirect:/admin/login";
		}
		List<User> user = userService.findAll();
		model.addAttribute("user", userRepository.findAll());
		return "admin/Admin_User/data-tables-user-list";
	}

//	Thêm người dùng
	@RequestMapping(value = { "/admin/add_user" }, method = { RequestMethod.GET })
	public String addUser(Model model, final HttpServletRequest request, final HttpServletResponse response) {
		if (CheckLogIn.Check(request) == false) {
			return "redirect:/admin/login";
		}
		model.addAttribute("user", new User());
		return "admin/Admin_User/add_user";
	}

	@RequestMapping(value = "/admin/add_user", method = RequestMethod.POST)
	public String saveUser(@RequestParam("PostImage") MultipartFile postImage, @ModelAttribute("user") UserRequest user,
			BindingResult result, final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws IllegalStateException, IOException {
		if (CheckLogIn.Check(request) == false) {
			return "redirect:/admin/login";
		}
		User userEtity = new User();
		BeanUtils.copyProperties(user, userEtity, "stt");
		System.out.println("STT" + user.getStt());
		if ("0".equalsIgnoreCase(user.getStt()))
			userEtity.setStt(false);
		else
			userEtity.setStt(true);

		if (postImage != null && postImage.getSize() > 0) {

			userEtity.setImage(postImage.getOriginalFilename());

			postImage.transferTo(new File(attachmentPath + "/" + postImage.getOriginalFilename()));
		} else {
			userEtity.setImage("avatar.png");

			postImage.transferTo(new File(attachmentPath + "/avatar.png"));
		}

		if (!userService.Insert(userEtity)) {
			result.addError(new FieldError("user", "email", "Email đã tồn tại!"));
			return "admin/Admin_User/add_user";
		}
		/* userRepository.save(user); */
		return "redirect:/admin/data-tables-user-list";
	}

	// Xoá người dùng
	@RequestMapping(value = { "/admin/delete-user/{userId}" }, method = { RequestMethod.GET })
	public String DeleteUser(@ModelAttribute("user") User user, @PathVariable int userId, Model model,
			final HttpServletRequest request, final HttpServletResponse response) {
		if (CheckLogIn.Check(request) == false) {
			return "redirect:/admin/login";
		}
		userRepository.deleteById(userId);
		model.addAttribute("user", userRepository.findAll());
		return "redirect:/admin/data-tables-user-list";
	}
}
