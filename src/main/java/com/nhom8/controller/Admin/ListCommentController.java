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

import com.nhom8.entities.Comment;
import com.nhom8.repositories.CommentRepository;
import com.nhom8.Service.CommentService;

@Controller
public class ListCommentController {
	@Autowired
	CommentRepository commentRepository;
	@Autowired
	CommentService commentService;

//	Danh sách bình luận
	@RequestMapping(value = { "/admin/list-comment" }, method = { RequestMethod.GET })
	public String dataTablesUserList(Model model, final HttpServletRequest request,
			final HttpServletResponse response) {
		if (CheckLogIn.Check(request) == false) {
			return "redirect:/admin/login";
		}
		List<Comment> comment = commentService.findAll();
		model.addAttribute("comment", commentService.findAll());
		return "admin/WebTinTuc/data-tables-comment";
	}

	// Xoá bình luận
	@RequestMapping(value = { "/admin/delete-comment/{commentID}" }, method = { RequestMethod.GET })
	public String DeleteComment(@ModelAttribute("comment") Comment comment, @PathVariable int commentID, Model model,
			final HttpServletRequest request, final HttpServletResponse response) {
		if (CheckLogIn.Check(request) == false) {
			return "redirect:/admin/login";
		}
		commentRepository.deleteById(commentID);
		model.addAttribute("comment", commentService.findAll());
		return "redirect:/admin/list-comment";
	}
}
