package com.team2.finalproject.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team2.finalproject.dto.product.ProductDto;
import com.team2.finalproject.service.MainService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequiredArgsConstructor
@Slf4j
public class MainController {
	
	private final MainService mainService;
	
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main(Model model) {
		List<ProductDto> result = mainService.getAllProducts();
		log.info("all products = {}", result);
		model.addAttribute("products", result);
		return "main";
	}
	

	@RequestMapping(value = "/productdetail", method = RequestMethod.GET)
	public String productdetail() {
			
			return "productdetail";
		}
	
	@RequestMapping(value = "/adminLogin", method = RequestMethod.GET)
	public String adminLogin() {
			
			return "adminLogin";
		}
	
	@RequestMapping(value = "/adminSidebar", method = RequestMethod.GET)
	public String adminSidebar() {
			
			return "adminSidebar";
		}
}
