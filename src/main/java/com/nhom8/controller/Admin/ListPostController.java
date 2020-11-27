package com.nhom8.controller.Admin;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nhom8.entities.Post;
import com.nhom8.repositories.AdminRepository;
import com.nhom8.repositories.CategoriesRepository;
import com.nhom8.repositories.PostRepository;

@Controller
public class ListPostController {
	@Autowired
	PostRepository postRepository;

	@Autowired
	CategoriesRepository categoriesRepository;

	@Autowired
	AdminRepository adminRepository;

//	@Autowired
//	AdminService adminService;

	@Value("${file.upload.path}")
	private String attachmentPath;

//	Danh sách post
	@RequestMapping(value = { "/admin/data-tables-details-post" }, method = { RequestMethod.GET })
	public String dataTablesPostList(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {
		if (CheckLogIn.Check(request) == false) {
			return "redirect:/admin/login";
		}
		List<Post> post = postRepository.findAll();
		model.addAttribute("category", categoriesRepository.findAll());

		model.addAttribute("post", post);
		return "admin/WebTinTuc/data-tables-details-post";
	}

//	Hàm xóa post
	@RequestMapping(value = { "/admin/data-tables-details-post/{postId}" }, method = { RequestMethod.GET })
	public String deleteAdmin(@PathVariable int postId, final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {
		if (CheckLogIn.Check(request) == false) {
			return "redirect:/admin/login";
		}
		postRepository.deleteById(postId);
		List<Post> post = postRepository.findAll();
		model.addAttribute("post", post);
		// trả về tên view.
		return "admin/WebTinTuc/data-tables-details-post";
	}

//	Định dạng kiểu ngày tháng
	@InitBinder("post")
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyy-MM-dd");
		dateFormatter.setLenient(false);
		binder.registerCustomEditor(Date.class, "createdDate", new CustomDateEditor(dateFormatter, true));
	}

//	Sửa Post
	@RequestMapping(value = { "/admin/edit-news/{postId}" }, method = { RequestMethod.GET })
	public String editPost(@PathVariable int postId, final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {
		model.addAttribute("category", categoriesRepository.findAll());
		Post post = postRepository.getOne(postId);
		model.addAttribute("post", post);

		// trả về tên view.
		return "admin/WebTinTuc/edit-news";
	}

	@RequestMapping(value = { "/admin/edit-news" }, method = { RequestMethod.POST })
	public String savePostViaBindData(@RequestParam("postImage") MultipartFile postImage,
			@ModelAttribute("post") Post post, final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws IllegalStateException, IOException {

		if (postImage != null && postImage.getSize() > 0) {
			/*
			 * PostAttachment postAttachment = new PostAttachment();
			 * postAttachment.setName(postImage.getOriginalFilename());
			 * postAttachment.setMine(postImage.getContentType());
			 * postAttachment.setPath(attachmentPath);
			 * 
			 * post.addPostAttachment(postAttachment);
			 */
			post.setImage(postImage.getOriginalFilename());

			// lưu file vào folder trên server.
			// E:/web-tintuc/Nhom13-web/src/main/resources/META-INF/img/upload/abc.jpeg

			postImage.transferTo(new File(attachmentPath + "/" + postImage.getOriginalFilename()));
		}
		postRepository.updatePost(post.getDescription(), post.getDetails(), post.getImage(), post.getTitle(),
				post.getCategory(), post.getId());

		// trả về tên view.
		return dataTablesPostList(model, request, response);
	}

//	Hết sửa post

//	Thêm post
	@RequestMapping(value = { "/admin/add-news" }, method = { RequestMethod.GET })
	public String addPost1(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		if (CheckLogIn.Check(request) == false) {
			return "redirect:/admin/login";
		}
//		HttpSession session = request.getSession();
//		String stringId = (String) session.getAttribute("name");
//		int intId = Integer.parseInt(stringId);
		model.addAttribute("adminList", adminRepository.findAll());
		model.addAttribute("post", new Post());
		model.addAttribute("category", categoriesRepository.findAll());
		return "admin/WebTinTuc/add-news";
	}

	@RequestMapping(value = "/admin/add-news", method = RequestMethod.POST)
	public String savePost(@RequestParam("postImage") MultipartFile postImage, @ModelAttribute("post") Post post,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IllegalStateException, IOException {
		if (CheckLogIn.Check(request) == false) {
			return "redirect:/admin/login";
		}
		if (postImage != null && postImage.getSize() > 0) {
			/*
			 * PostAttachment postAttachment = new PostAttachment();
			 * postAttachment.setName(postImage.getOriginalFilename());
			 * postAttachment.setMine(postImage.getContentType());
			 * postAttachment.setPath(attachmentPath);
			 * 
			 * post.addPostAttachment(postAttachment);
			 */
			post.setImage(postImage.getOriginalFilename());

			// lưu file vào folder trên server.
			// E:/web-tintuc/Nhom13-web/src/main/resources/META-INF/img/upload/abc.jpeg

			postImage.transferTo(new File(attachmentPath + "/" + postImage.getOriginalFilename()));
		}

		Date now = new Date();
		java.sql.Date createdDate = new java.sql.Date(now.getTime());
		post.setCreatedDate(createdDate);

		postRepository.save(post);

		return "admin/WebTinTuc/add-news";
	}
//	Hết thêm post
}
