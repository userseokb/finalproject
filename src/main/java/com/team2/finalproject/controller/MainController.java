package com.team2.finalproject.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MainController {
	
	@GetMapping("/main")
	public String main() {
		
		return "main";
	}
	

	@RequestMapping(value = "/productdetail", method = RequestMethod.GET)
	public String productdetail() {
			
			return "productdetail";
		}
	
}
