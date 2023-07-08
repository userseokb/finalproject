package com.team2.finalproject.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team2.finalproject.dto.pagination.PageRequestDto;
import com.team2.finalproject.dto.pagination.PageResponseDto;
import com.team2.finalproject.dto.product.ProductDto;
import com.team2.finalproject.mapper.MainMapper;
import com.team2.finalproject.service.MainService;
import com.team2.finalproject.service.SearchService;

@Controller
public class SearchController {

	@Autowired
	SearchService searchService;
	@Autowired
	MainService MainService;
	
	MainMapper mainMapper;
	
	@RequestMapping(value="/search", method=RequestMethod.GET)
	public String getProductBySearchKeyword(HttpServletRequest request, Model model) {
		
		String query = request.getParameter("query");
		List<ProductDto> products = searchService.getProductBySearchQuery(query);
		
		
		model.addAttribute("products",products);
		
		return "main";
	}
	
}
