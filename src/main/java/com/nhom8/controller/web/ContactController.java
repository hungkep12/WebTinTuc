package com.nhom8.controller.web;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nhom8.Service.CategoriesService;
import com.nhom8.dto.AjaxResponse;
import com.nhom8.entities.Admin;
import com.nhom8.entities.Contact;
import com.nhom8.repositories.CategoriesRepository;
import com.nhom8.repositories.CommentRepository;
import com.nhom8.repositories.ContactRepository;
import com.nhom8.repositories.PostRepository;
import com.nhom8.repositories.UserRepository;

@Controller
public class ContactController {
	@Autowired
	CategoriesRepository categoriesRepository;
	@Autowired
	PostRepository postRepository;
	@Autowired
	CommentRepository commentRepository;
	@Autowired
	ContactRepository contactRepository;
	@Autowired
	UserRepository userRepository;
	@Autowired
	CategoriesService categoriesService;
	
	@RequestMapping("/contact")
	public String contact(Model model, final HttpServletRequest request, final HttpServletResponse response) {
		Contact contact = new Contact();
		model.addAttribute("contact", contact);
		model.addAttribute("categories", categoriesService.findByStatus(true));

		return "web/contact";
	}
	@RequestMapping(value={"/contact-bind-data"}, method= {RequestMethod.POST})
	public String contactBindData(@ModelAttribute("contact") Contact contact, ModelMap model, HttpServletRequest request) {
		
		System.out.println("=======================login admin============================");
		System.out.println("================= liên hệ =========================================");
		System.out.println(contact.getContent());
		System.out.println(contact.getEmail());
		model.addAttribute("categories", categoriesRepository.findAll());
		// lưu dữ liệu vào database.
		
		contact.setStt(false);
		contact.setCreatedDate(new Date());
		contactRepository.save(contact);

		// trả về thông báo cho người dùng.
		model.addAttribute("status", "success");
		return "web/contact";
	}
	// ========AJAX==========
//	@PostMapping(value = { "/contact-bind-data" })
//	public ResponseEntity<AjaxResponse> saveContactViaBindData(@RequestBody final Map<String, Object> data,
//			@ModelAttribute("contact") Contact contact, final ModelMap model, final HttpServletRequest request,
//			final HttpServletResponse response) {
//		System.out.println("================= liên hệ =========================================");
//		System.out.println(data.get("content"));
//		System.out.println(data.get("email"));
//		model.addAttribute("categories", categoriesRepository.findAll());
//		// lưu dữ liệu vào database.
//		contact.setEmail(String.valueOf(data.get("content")));
//		contact.setFullName(String.valueOf(data.get("fullName")));
//		contact.setContent(String.valueOf(data.get("email")));
//		contact.setStt(false);
//		contact.setCreatedDate(new Date());
//		contactRepository.save(contact);
//
//		// trả về thông báo cho người dùng.
//		model.addAttribute("status", "success");
//
//		// trả về tên view.
//		return ResponseEntity.ok(new AjaxResponse("Bạn đã gửi thành công!", 500));
//	}
}
