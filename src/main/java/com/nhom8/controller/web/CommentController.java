package com.nhom8.controller.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nhom8.Service.CategoriesService;
import com.nhom8.Service.CommentService;
import com.nhom8.Service.PostService;
import com.nhom8.Service.UserService;
import com.nhom8.dto.AjaxResponse;
import com.nhom8.entities.Comment;
import com.nhom8.entities.Contact;
import com.nhom8.entities.Post;
import com.nhom8.entities.User;
import com.nhom8.repositories.CommentRepository;
import com.nhom8.repositories.PostRepository;

@Controller
public class CommentController {
	@Autowired
	PostRepository postRepository;
	@Autowired
	CommentRepository commentRepository; 
	@Autowired
	CategoriesService categoriesService;
	@Autowired
	PostService postService;
	@Autowired
	CommentService commentService;
	@Autowired
	UserService userService;
	
	
	
	@RequestMapping(value={"/blog-post/{id}-{title}"} , method = { RequestMethod.GET })
	public String blog_post(@PathVariable int id, final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {
		System.out.println("================================== Blog Post ========================================");
		HttpSession session = request.getSession(true);
		model.addAttribute("post", postService.findAllById(id));
		model.addAttribute("categories", categoriesService.findByStatus(true));
		model.addAttribute("mostPost", postService.findAllByView());
		model.addAttribute("comment", commentService.findCommentById(id));

		Comment comment = new Comment();
		System.out.println("================================== Update View ========================================");
		int view = postRepository.findViewById(id);
		System.out.println("view ban đầu :" +view);
		view++;
		System.out.println("id cần sửa view: " + id);
		System.out.println("view cần update:" +view);
		// update view 
		System.out.println(postService.updateView(view,id));
				
		return "web/blog-post";
	}
	
	@RequestMapping(value = { "/blog-post/addComment/{id}-{title}" }, method = { RequestMethod.POST })
	public String saveComment( @PathVariable int id,@PathVariable String title, @ModelAttribute("comments") Comment comment, final ModelMap model,
			final HttpServletRequest request, final HttpServletResponse response) {
		if (CheckLoginUser.Check(request) == false) {
			return "redirect:/blog-post/{id}-{title}";
		}
		// lưu dữ liệu vào database.
		HttpSession session = request.getSession();
		if(session.getAttribute("emailUser") != null) {
			System.out.println("============comment========");
			comment.setDateTime(new Date());
			comment.setStatus(true);
			commentRepository.save(comment);
			// trả về thông báo cho người dùng.
			model.addAttribute("status", "success");
		}else {
			System.out.println("============no comment========");
			model.addAttribute("status", "phải nhập bình luận");
		}
		

		
		
		model.addAttribute("post", postService.findAllById(id));
		model.addAttribute("categories", categoriesService.findByStatus(true));
		model.addAttribute("mostPost", postService.findAllByView());
		model.addAttribute("comment", commentService.findCommentById(id));
		
		return "web/blog-post";
	}
	
	// ========AJAX==========
//	@PostMapping(value = { "/comment" })
//	public ResponseEntity<AjaxResponse> saveContactViaBindData(@RequestBody final Map<String, Object> data,
//			@ModelAttribute("commets") Comment comment, final ModelMap model, final HttpServletRequest request,
//			final HttpServletResponse response) {
//		
//		comment.setContent(String.valueOf(data.get("content")));
//		User user = new User();
//		user.setId(Integer.parseInt(String.valueOf(data.get("idUser"))));
//		comment.setUser(user);
//		Post post = new Post();
//		post.setId(Integer.parseInt(String.valueOf(data.get("idPost"))));
//		comment.setPost(post);
//		comment.setStatus(true);
//		// lưu dữ liệu vào database.
//		comment.setDateTime(new Date());
//		commentRepository.save(comment);
//
//		// trả về thông báo cho người dùng.
//		model.addAttribute("status", "success");
//		// trả về tên view.
//		return ResponseEntity.ok(new AjaxResponse("Bình luận ", 500));
//	}
}

