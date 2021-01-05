package com.nhom8.controller.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nhom8.Service.UserService;
import com.nhom8.entities.User;
import com.nhom8.repositories.UserRepository;

@Controller
public class LogInController {
	@Autowired
	UserRepository userRepository;
	@Autowired
	UserService userService;

	@RequestMapping(value = { "/login" }, method = { RequestMethod.GET })
	public String DangNhap(Model model, final HttpServletRequest request, final HttpServletResponse response) {

		return "web/login";
	}

	@PostMapping("/DangNhap")
	public String logIn(@ModelAttribute("Login") User user, ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {
		System.out.println("=======================login user============================");
		System.out.println("email : " + user.getEmail());
		System.out.println("Password : " + user.getPass());
		String email = user.getEmail();
		String pass = user.getPass();
		List<User> admin = userService.findAll();

		for (User tk : admin) {
			if (user.getEmail().equals(tk.getEmail())) {

				System.out.println(
						"================================== login ===================================================");
				int id = tk.getId();
				userService.updateStatusForId(true, id);

				System.out.println(userService.updateStatusForId(true, id));

				HttpSession session = request.getSession(true);

				String name = tk.getUserName().toString();
				session.setAttribute("nameUser", name);
				session.setAttribute("emailUser", user.getEmail().toString());
				session.setAttribute("idUser", id);
				String img = tk.getImage();
				session.setAttribute("imgUser", img);
				System.out.println(session.getAttribute("nameUser"));
				System.out.println(session.getAttribute("emailUser"));
				System.out.println(session.getAttribute("idUser"));

				return "redirect:/index";
			}
		}
		return "web/login";
	}

	@RequestMapping(value = { "/logout" }, method = { RequestMethod.GET })
	public String DangXuat(Model model, final HttpServletRequest request, final HttpServletResponse response) {

		HttpSession session = request.getSession();
		if (CheckLoginUser.Check(request) == true) {

			int id = (int) session.getAttribute("idUser");
			userService.updateStatusForId(false, id);
			session.removeAttribute("nameUser");
			session.removeAttribute("idUser");
			session.removeAttribute("emailUser");
			session.removeAttribute("imgUser");
			return "redirect:/index";
		}

		return "redirect:/index";
	}

}
