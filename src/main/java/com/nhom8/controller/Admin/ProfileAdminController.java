package com.nhom8.controller.Admin;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nhom8.Service.AdminService;
import com.nhom8.entities.Admin;
import com.nhom8.repositories.AdminRepository;

@Controller
public class ProfileAdminController {
	@Autowired
	AdminRepository adminRepository;
	@Value("${file.upload.path}")
	private String attachmentPath;
	@Autowired
	AdminService adminService;

	// Xem thông tin tài khoản
	@RequestMapping(value = { "/admin/influencer_profile/{adminID}" }, method = { RequestMethod.GET })
	public String influencerProfile(@PathVariable int adminID, Model model, final HttpServletRequest request,
			final HttpServletResponse response) {
		if (CheckLogIn.Check(request) == false) {
			return "redirect:admin/login";
		}
		Admin admin = new Admin();
		System.out.println("Số bài đã đăng : " + adminRepository.CountById(adminID));
		model.addAttribute("admin", adminRepository.getOne(adminID));
		model.addAttribute("count", adminRepository.CountById(adminID));
		return "admin/influencer-profile";
	}

	// Lưu thông tin tài khoản
	@RequestMapping(value = { "/admin/influencer_profile_edit/{adminID}" }, method = { RequestMethod.POST })
	public String EditProfile(@PathVariable int adminID, @RequestParam("PostImage") MultipartFile postImage,
			@ModelAttribute("admin") Admin admin, ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws IllegalStateException, IOException {
		if (CheckLogIn.Check(request) == false) {
			return "redirect:/admin/login";
		}
		HttpSession session = request.getSession();
		if (postImage != null && postImage.getSize() > 0) {

			admin.setImage(postImage.getOriginalFilename());

			postImage.transferTo(new File(attachmentPath + "/" + postImage.getOriginalFilename()));
		} else {
			String image = session.getAttribute("image").toString();
			admin.setImage(image);
			postImage.transferTo(new File(attachmentPath + "/" + image));
		}
		if ("".equals(admin.getPass())) {
			String pass = session.getAttribute("pass").toString();
			admin.setPass(pass);
		}

		admin.setPosition(session.getAttribute("chucvu").toString());
		// System.out.println("Chức vụ : " + session.getAttribute("chucvu").toString());
		admin.setStt(true);
		adminRepository.save(admin);

		session.setAttribute("name", admin.getFullName());
		session.setAttribute("pass", admin.getPass());
		session.setAttribute("chucvu", admin.getPosition());
		session.setAttribute("email", admin.getEmail());
		session.setAttribute("ID", admin.getId());
		session.setAttribute("image", admin.getImage());
		return "redirect:/admin/influencer_profile/{adminID}";
	}
}
