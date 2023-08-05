package com.skkcandle.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skkcandle.dto.User;
import com.skkcandle.service.UserService;
import com.skkcandle.service.UserService.JoinResult;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class joinController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/join")
	public String joinmain(@RequestParam(value ="register_msg", defaultValue ="이메일")String register_msg, Model model) {
		model.addAttribute("register_msg", register_msg);
		return "join/joinForm";
	}
	
	@PostMapping("/register")
	public String register(User user, Model model) {
		log.info("user정보 :" + user);
		JoinResult joinresult =  userService.join(user);
		
		//이메일이 중복될경우 
		if(joinresult == JoinResult.FAIL_DUPLICATED_Email) {
			model.addAttribute("register_msg", "이메일이 중복되었습니다.");
			return "redirect:/join";
		}
		return "loginForm";
	}
	
}
