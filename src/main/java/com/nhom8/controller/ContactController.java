package com.nhom8.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nhom8.dto.AjaxResponse;
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

	@RequestMapping("/contact")
	public String contact(Model model, final HttpServletRequest request, final HttpServletResponse response) {
		Contact contact = new Contact();
		model.addAttribute("contact", contact);
		model.addAttribute("categories", categoriesRepository.findAll());

		return "contact";
	}

	
	  @GetMapping(value = { "/contact-bind-data" }) 
	  public String saveContactViaBindData(@ModelAttribute("contact") Contact contact, 
			  final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
	  
		  model.addAttribute("categories", categoriesRepository.findAll()); // lưu dữ liệu vào database. 
		  contactRepository.save(contact);
		 
		  // trả về thông báo cho người dùng. 
		  model.addAttribute("status", "success");
	  
	 // trả về tên view. 
	 	return "contact"; 
	 }
	 

	// ========AJAX==========
	/*@GetMapping(value = { "/contact-bind-data" })
	public ResponseEntity<AjaxResponse> saveContactViaBindData(@RequestBody final Map<String, Object> data,
			@ModelAttribute("contact") Contact contact, final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {
		//contact = new Contact();
		//model.addAttribute("contact2", contact);
		
		//model.addAttribute("categories", categoriesRepository.findAll());
		// lưu dữ liệu vào database.
		//contactRepository.save(contact);

		// trả về thông báo cho người dùng.
		//model.addAttribute("status", "success");

		// trả về tên view.
		return ResponseEntity.ok(new AjaxResponse("Bạn đã gửi thành công!", 500));
	}*/
}
