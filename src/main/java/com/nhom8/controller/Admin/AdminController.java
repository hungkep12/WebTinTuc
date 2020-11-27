package com.nhom8.controller.Admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nhom8.repositories.AdminRepository;
import com.nhom8.repositories.UserRepository;

@Controller
public class AdminController {
	@Autowired
	AdminRepository adminRepository;

	@Autowired
	UserRepository userRepository;

//	Sửa người dùng
	@RequestMapping(value = { "/admin/edit_admin" }, method = { RequestMethod.GET })
	public String editAdmin(Model model, final HttpServletRequest request, final HttpServletResponse response) {
		if (CheckLogIn.Check(request) == false) {
			return "redirect:admin/login";
		}
		model.addAttribute("user", adminRepository.findAll());
		return "admin/Admin_User/edit_admin";
	}

//	Sửa danh mục
	@RequestMapping(value = { "admin/edit_category" }, method = { RequestMethod.GET })
	public String editCategoriesPost(Model model, final HttpServletRequest request,
			final HttpServletResponse response) {
		if (CheckLogIn.Check(request) == false) {
			return "redirect:/admin/login";
		}
		model.addAttribute("user", userRepository.findAll());
		return "admin/WebTinTuc/edit_category";
	}

//	Sửa tin tức
	@RequestMapping(value = { "/admin/edit-news" }, method = { RequestMethod.GET })
	public String EditNews(Model model, final HttpServletRequest request, final HttpServletResponse response) {
		model.addAttribute("user", userRepository.findAll());
		return "admin/WebTinTuc/edit-news";
	}

//	Ngày tháng
	@RequestMapping(value = { "/admin/calendar" }, method = { RequestMethod.GET })
	public String calendar(Model model, final HttpServletRequest request, final HttpServletResponse response) {
		model.addAttribute("user", userRepository.findAll());
		return "admin/calendar";
	}

//	Xem thông tin tài khoản
	@RequestMapping(value = { "/admin/influencer_profile" }, method = { RequestMethod.GET })
	public String influencerProfile(Model model, final HttpServletRequest request, final HttpServletResponse response) {
		model.addAttribute("user", userRepository.findAll());
		return "admin/influencer-profile";
	}

//	Địa chỉ
	@RequestMapping(value = { "/admin/address" }, method = { RequestMethod.GET })
	public String dataTablesAddress(Model model, final HttpServletRequest request, final HttpServletResponse response) {
		model.addAttribute("user", userRepository.findAll());
		return "admin/WebTinTuc/address";
	}

}
