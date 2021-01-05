package com.nhom8.controller.Admin;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nhom8.Service.AdminService;
import com.nhom8.entities.Admin;
import com.nhom8.entities.Contact;
import com.nhom8.repositories.AdminRepository;
import com.nhom8.repositories.ContactRepository;
import com.nhom8.repositories.PostRepository;
import com.nhom8.repositories.UserRepository;

@Controller
public class ListAdminController {
	@Autowired
	AdminRepository adminRepository;

	@Autowired
	UserRepository userRepository;

	@Autowired
	PostRepository postRepository;

	@Autowired
	AdminService adminService;
	@Autowired
	ContactRepository contactRepository;
	
	@Value("${file.upload.path}")
	private String attachmentPath;

//	CheckLogIn check;
//	Danh sách quản trị viên
	@RequestMapping(value = { "/admin/data-tables-admin-list" }, method = { RequestMethod.GET })
	public String dataTablesAdminList(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {
		if (CheckLogIn.Check(request) == false) {
			return "redirect:/admin/login";
		}
		List<Admin> admin = adminRepository.findAll();
		model.addAttribute("admin", adminRepository.findAll());
		return "admin/Admin_User/data-tables-admin-list";
	}

//	Danh sách quản trị viên
	@RequestMapping(value = { "/admin" }, method = { RequestMethod.GET })
	public String dataTablesAdmin(Model model, final HttpServletRequest request, final HttpServletResponse response) {
		if (CheckLogIn.Check(request) == false) {
			return "redirect:/admin/login";
		}
		boolean kiemtra = false;
		if(!adminService.countContact()) {
			kiemtra = false;
		}
		else {
			kiemtra = true;
		}
		System.out.println("Kiểm tra : " + adminService.countContact());
		model.addAttribute("kiemtra", kiemtra);
		List<Admin> admin = adminRepository.findAll();
		model.addAttribute("admin", adminRepository.findAll());
		model.addAttribute("countUserAccount", userRepository.CountUserById());
		model.addAttribute("countAdminAccount", adminRepository.CountAdminById());
		model.addAttribute("countPost", postRepository.CountPostById());
		List<Contact> contactFalse = contactRepository.findAll();
		model.addAttribute("contactFalse",adminService.findAll());
		
		return "admin/index";
	}

//	Hàm xóa admin
	@RequestMapping(value = { "/admin/data-tables-admin-list/{adminId}" }, method = { RequestMethod.GET })
	public String deleteAdmin(@PathVariable int adminId, final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {

		adminRepository.deleteById(adminId);
		List<Admin> admin = adminRepository.findAll();
		model.addAttribute("admin", admin);
		// trả về tên view.
		return "admin/Admin_User/data-tables-admin-list";
	}

//	Định dạng kiểu ngày tháng
	@InitBinder("admin")
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd");
		dateFormatter.setLenient(false);
		binder.registerCustomEditor(Date.class, "dob", new CustomDateEditor(dateFormatter, true));
	}

//	Sửa admin
	@RequestMapping(value = { "/admin/edit_admin/{adminId}" }, method = { RequestMethod.GET })
	public String editAdmin(@PathVariable int adminId, final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {
		Admin admin = adminRepository.getOne(adminId);
		model.addAttribute("admin", admin);

		// trả về tên view.
		return "admin/Admin_User/edit_admin";
	}

	@RequestMapping(value = { "/admin/edit_admin" }, method = { RequestMethod.POST })
	public String saveAdminViaBindData(@ModelAttribute("admin") Admin admin, final ModelMap model,
			final HttpServletRequest request, final HttpServletResponse response) {

		adminRepository.save(admin);
		// trả về thông báo cho người dùng.
		model.addAttribute("status", "success");

		// trả về tên view.
		return dataTablesAdminList(model, request, response);
	}

//	Hết sửa admin

//	Thêm admin
	@RequestMapping(value = { "/admin/add_admin" }, method = { RequestMethod.GET })
	public String listAdmin(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {
		model.addAttribute("admin", new Admin());
		return "admin/Admin_User/add_admin";
	}

	@RequestMapping(value = "/admin/add_admin", method = RequestMethod.POST)
	public String saveAdmin(@RequestParam("postImage") MultipartFile postImage, @ModelAttribute("admin") Admin admin,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IllegalStateException, IOException {

		if (postImage != null && postImage.getSize() > 0) {

			admin.setImage(postImage.getOriginalFilename());

			postImage.transferTo(new File(attachmentPath + "/" + postImage.getOriginalFilename()));
		}

		String password = admin.getPass();
		String hash = BCrypt.hashpw(password, BCrypt.gensalt(12));
		admin.setPass(hash);
		
		adminRepository.save(admin);

		return "admin/Admin_User/add_admin";
	}
//	Hết thêm admin
}