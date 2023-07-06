package com.team2.finalproject.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team2.finalproject.dto.pagination.PageRequestDto;
import com.team2.finalproject.dto.pagination.PageResponseDto;
import com.team2.finalproject.dto.product.ProductDto;
import com.team2.finalproject.mapper.MainMapper;
import com.team2.finalproject.service.MainService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequiredArgsConstructor
@Slf4j
public class MainController {
	
	
	private final MainMapper mainMapper;
	
	@GetMapping(value = "/main")
	public String mainmethod(@ModelAttribute PageRequestDto pageRequest,
						Model model) {
		List<ProductDto> result = mainMapper.getProductByPagination(pageRequest);
		log.info("all products = {}", result);
		
		int total = mainMapper.getTotalCount(pageRequest);
		PageResponseDto pageResponse = new PageResponseDto(total, 10, pageRequest);
		
		model.addAttribute("products", result);
		model.addAttribute("pageInfo", pageResponse);
		return "main";
	}
	

	@RequestMapping(value = "/productdetail", method = RequestMethod.GET)
	public String productdetail() {
			
			return "productdetail";
		}
	
}
