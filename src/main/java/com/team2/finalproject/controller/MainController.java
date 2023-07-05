package com.team2.finalproject.controller;

import org.springframework.stereotype.Controller;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.GetMapping;
=======
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
>>>>>>> 0bfbd6604f1bb9a642f8ba6e0702631a99b5a5fc

@Controller
public class MainController {
	
	@GetMapping("/main")
	public String main() {
		
		return "main";
	}
	

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String main() {
		
		return "main";
	}
	


	@RequestMapping(value = "/productdetail", method = RequestMethod.GET)
	public String productdetail() {
			
			return "productdetail";
		}
	
}
