package com.nhom8.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nhom8.Service.CategoriesService;
import com.nhom8.Service.searchService;

import com.nhom8.repositories.CategoriesRepository;

@Controller
public class SearchController {
	@Autowired
	private searchService searchService;
	@Autowired
	CategoriesRepository categoriesRepository;
	@Autowired
	CategoriesService categoriesService;
	@Autowired
	public searchService getSearchService() {
		return searchService;
	}

	@Autowired
	public void setSearchService(searchService searchService) {
		this.searchService = searchService;
	}

	@GetMapping("/search")
	public String searchPost(Model model, @RequestParam(defaultValue = "") String title) {
		model.addAttribute("postSearched", searchService.findByTitleLike(title));
		//đưa ra tất cả thể loại
		model.addAttribute("categories", categoriesService.findByStatus(true));
		
		return "web/searchpost";

	}
}
