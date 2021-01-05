package com.nhom8.controller.Admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nhom8.entities.Admin;
import com.nhom8.repositories.AdminRepository;

@Controller
@Transactional
public class LogInAdminController {
	@Autowired
	AdminRepository adminRepository;

	@RequestMapping(value = { "/admin/login" }, method = { RequestMethod.GET })
	public String DangNhap(Model model, final HttpServletRequest request, final HttpServletResponse response) {
		System.out.println("=======================login admin============================");
		return "admin/loginAdmin";
	}
	@RequestMapping(value = { "/admin/logout" }, method = { RequestMethod.GET })
	public String DangXuat(Model model,  HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		int id = Integer.parseInt(session.getAttribute("ID").toString());
		adminRepository.updateSttForId(false, id);
		if(session.getAttribute("email") != null) {
			session.removeAttribute("email") ;
			session.removeAttribute("name");
			session.removeAttribute("pass");
			session.removeAttribute("chucvu");
			session.removeAttribute("ID");
			session.removeAttribute("image");
			
		}
		return "admin/loginAdmin";
	}

	@PostMapping("/admin/LogAdmin")
	public String logIn(@ModelAttribute("loginAdmin") Admin admin, ModelMap model, HttpServletRequest request) {
		
		System.out.println("=======================login admin============================");
		
		System.out.println("Email : " + admin.getEmail());
		System.out.println("Password : " + admin.getPass());
		String userEmail = admin.getEmail();
		Integer id = adminRepository.selectIdByUserName(userEmail);
		List<Admin> adminEntity = adminRepository.findAll();
		for (Admin tk : adminEntity) {
			if (admin.getEmail().equals(tk.getEmail())){
				
				adminRepository.updateSttForId(true, id);
				
				HttpSession session = request.getSession();
				String name = tk.getFullName().toString();
				String pass = tk.getPass().toString();
				String email = tk.getEmail().toString();
				int Id = tk.getId();
				String chucvu = tk.getPosition().toString();
				String images = tk.getImage();
				//int Id = admin.getId();
				session.setAttribute("name", name);
				session.setAttribute("pass", pass);
				session.setAttribute("chucvu", chucvu);
				session.setAttribute("email", email);
				session.setAttribute("ID", Id);
				session.setAttribute("image", images);
				System.out.println("=======================Đăng nhập thành công============================");
				return "redirect:/admin";
			}
		}
		return "admin/loginAdmin";
	}
}
