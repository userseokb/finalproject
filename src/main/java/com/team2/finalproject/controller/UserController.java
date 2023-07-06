package com.team2.finalproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team2.finalproject.dto.user.UserDto;
import com.team2.finalproject.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService service;
	
	//getAllUser
	@RequestMapping(value = "/userDetail", method = RequestMethod.GET)
	public String userDetail(Model model) {
		List<UserDto> userList = service.getAllUser();
		
		model.addAttribute("userList", userList);
		
		System.out.println(userList);
		
		return "userDetail";
	}
	
	//insertUser
	@RequestMapping(value = "/signUp", method = RequestMethod.GET)
	public String insertUserForm() {
		
		return "signUp";
	}
	
	@RequestMapping(value = "/signUp", method = RequestMethod.POST)
	public String signUp(@ModelAttribute UserDto newUser, Model model) {
		
		service.insertUser(newUser);
		
		System.out.println(newUser);
		
		return "main";
	}
	
	//deleteUserByUserNo
	@RequestMapping(value = "/personalInfomation/{user_no}", method = RequestMethod.DELETE)
	public String deleteUser(@PathVariable int userNo) {
		
		service.deleteUserByUserNo(userNo);
		
		return "main";
	}
	
	//UserDetail
	@RequestMapping(value = "/personalInfomation/{user_no}", method = RequestMethod.GET)
	public String getUserByUserNo(@PathVariable int userNo, Model model) {
		
		service.getUserByUserNo(userNo);
		
		return "/personalInfomation/{user_no}";
	}
	
	
}
