package com.nhom8.controller.Admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nhom8.entities.Categories;
import com.nhom8.repositories.CategoriesRepository;

@Controller
public class ListCategoryController {

	@Autowired
	CategoriesRepository categoriesRepository;

	/* Danh mục */
//	Hàm xóa
	@RequestMapping(value = { "/admin/list-category/{categoryId}" }, method = { RequestMethod.GET })
	public String deleteCategory(@PathVariable int categoryId, final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {
		categoriesRepository.deleteById(categoryId);
		List<Categories> category = categoriesRepository.findAll();
		model.addAttribute("category", category);
		// trả về tên view.
		return "admin/WebTinTuc/list-category";
	}

//	Danh sách danh mục tin tức
	@RequestMapping(value = { "/admin/list-category" }, method = { RequestMethod.GET })
	public String listCategory(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {

		if (CheckLogIn.Check(request) == false) {
			return "redirect:/admin/login";
		}

		model.addAttribute("category", categoriesRepository.findAll());

		return "admin/WebTinTuc/list-category";
	}

//	Sửa danh mục
	@RequestMapping(value = { "/admin/edit_category/{categoryId}" }, method = { RequestMethod.GET })
	public String editCategory(@PathVariable int categoryId, final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {

		Categories category = categoriesRepository.getOne(categoryId);
		model.addAttribute("category", category);

		// trả về tên view.
		return "admin/WebTinTuc/edit_category";
	}

	@RequestMapping(value = { "/admin/edit_category" }, method = { RequestMethod.POST })
	public String updateCategoryViaBindData(@ModelAttribute("category") Categories category, final ModelMap model,
			final HttpServletRequest request, final HttpServletResponse response) {
		// lưu dữ liệu vào database.
	
		categoriesRepository.save(category);

		// trả về thông báo cho người dùng.
		model.addAttribute("status", "success");

		// trả về tên view.
		return listCategory(model, request, response);
	}
//	Hết sửa danh mục

//	Thêm danh mục
	@RequestMapping(value = { "/admin/add_category" }, method = { RequestMethod.GET })
	public String listCate(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		model.addAttribute("category", new Categories());
		return "admin/WebTinTuc/add_category";
	}

	@RequestMapping(value = "/admin/add_category")
	public String addCategory(@ModelAttribute("category") Categories category, BindingResult result,
			final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IllegalStateException, IOException {
		
		categoriesRepository.save(category);

		return "admin/WebTinTuc/add_category";
	}
//	Hết thêm danh mục
}
