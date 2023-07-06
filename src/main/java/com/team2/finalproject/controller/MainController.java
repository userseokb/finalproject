package com.team2.finalproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {
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
