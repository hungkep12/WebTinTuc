package com.nhom8.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nhom8.entities.Comment;
import com.nhom8.entities.Post;
import com.nhom8.repositories.CategoriesRepository;
import com.nhom8.repositories.CommentRepository;
import com.nhom8.repositories.ContactRepository;
import com.nhom8.repositories.PostRepository;
import com.nhom8.repositories.UserRepository;

@Controller
public class CommentController {
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
	
	
	@RequestMapping(value={"/blog-post/{id}-{title}"} , method = { RequestMethod.GET })
	public String blog_post(@PathVariable Integer id, @ModelAttribute("comment") Comment comment, final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {
		System.out.println("================================== Blog Post ========================================");
		//tìm kiếm theo title trong tbl_post
		model.addAttribute("post", postRepository.findAllById(id));
		model.addAttribute("categories", categoriesRepository.findAll());
		model.addAttribute("mostPost", postRepository.findAllByView());
		model.addAttribute("comment", commentRepository.findCommentById(id));
		
		comment = new Comment();
		model.addAttribute("comment", comment);
		
		System.out.println("================================== Update View ========================================");
		int view = postRepository.findViewById(id);
		System.out.println("view ban đầu :" +view);
		view++;
		System.out.println("id cần sửa view: " + id);
		System.out.println("view cần update:" +view);
		// update view 
		System.out.println(postRepository.updateView(view,id));
		
		
		return "blog-post";
	}
	
	@RequestMapping(value = { "/blog-post/addComment/{id}-{title}" }, method = { RequestMethod.POST })
	public String saveComment(@PathVariable String title, @PathVariable int id, @ModelAttribute("comment") Comment comment, final ModelMap model,
			final HttpServletRequest request, final HttpServletResponse response) {
		
		model.addAttribute("post", postRepository.findByTitleLike(title));
		model.addAttribute("categories", categoriesRepository.findAll());
		model.addAttribute("mostPost", postRepository.findAllByView());

		// lưu dữ liệu vào database.
		commentRepository.save(comment);

		// trả về thông báo cho người dùng.
		model.addAttribute("status", "success");
		
		return blog_post(id,comment, model, request, response);
	}
}

