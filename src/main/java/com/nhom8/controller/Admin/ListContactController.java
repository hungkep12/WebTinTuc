package com.nhom8.controller.Admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.transaction.annotation.Transactional;

import com.nhom8.entities.Comment;
import com.nhom8.entities.Contact;
import com.nhom8.repositories.ContactRepository;

@Controller
public class ListContactController {
	@Autowired
	ContactRepository contactRepository;

//	Danh sách quản trị viên
	@RequestMapping(value = { "/admin/list-contact" }, method = { RequestMethod.GET })
	public String dataTablesContactList(Model model, final HttpServletRequest request,
			final HttpServletResponse response) {
		if (CheckLogIn.Check(request) == false) {
			return "redirect:/admin/login";
		}
		List<Contact> contact = contactRepository.findAll();
		model.addAttribute("contact", contactRepository.findAll());
		return "admin/Contact/list-contact";
	}

	// Xoá contact
	@RequestMapping(value = { "/admin/delete-contact/{contactID}" }, method = { RequestMethod.GET })
	public String DeleteContact(@ModelAttribute("contact") Contact contact, @PathVariable int contactID, Model model,
			final HttpServletRequest request, final HttpServletResponse response) {
		if (CheckLogIn.Check(request) == false) {
			return "redirect:/admin/login";
		}
		contactRepository.deleteById(contactID);
		model.addAttribute("contact", contactRepository.findAll());
		return "redirect:/admin/list-contact";
	}

	// Xoá tất cả contact
	@RequestMapping(value = { "/admin/delete-all-contact" }, method = { RequestMethod.GET })
	public String DeleteAllContact(@ModelAttribute("contact") Contact contact, Model model,
			final HttpServletRequest request, final HttpServletResponse response) {
		if (CheckLogIn.Check(request) == false) {
			return "redirect:/admin/login";
		}
		contactRepository.deleteAll();
		model.addAttribute("contact", contactRepository.findAll());
		return "redirect:/admin/list-contact";
	}

	// Sửa trạng thái contact
	@Transactional
	@RequestMapping(value = { "/admin/edit-stt-contact/{contactID}" }, method = { RequestMethod.GET })
	public String EditSttContact(@ModelAttribute("contact") Contact contact, @PathVariable int contactID, Model model,
			final HttpServletRequest request, final HttpServletResponse response) {
		if (CheckLogIn.Check(request) == false) {
			return "redirect:/admin/login";
		}
		contactRepository.updateSttForId(true, contactID);
		model.addAttribute("contact", contactRepository.findAll());
		return "redirect:/admin/list-contact";
	}
}
