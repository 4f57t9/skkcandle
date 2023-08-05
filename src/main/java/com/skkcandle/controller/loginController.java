package com.skkcandle.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skkcandle.dto.User;
import com.skkcandle.service.UserService;
import com.skkcandle.service.UserService.LoginResult;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class loginController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/loginForm")
	public String loginForm(@RequestParam(name="loginErrMsg", defaultValue="") String loginErrMsg, Model model) {
		//만약 로그인 실패하면 이 정보를 가지고 팝업띄우자
		model.addAttribute("loginErrMsg", loginErrMsg);
		log.info("loginErrMsg : "+ loginErrMsg);
		return "loginForm";
	}
	
	@PostMapping("/login")
	public String login(User user, HttpSession session, Model model) {
		log.info("실행");
		LoginResult result = userService.login(user);
		String errorMsg = "";
		if(result == LoginResult.FAIL_EMAIL_WRONG) {
			errorMsg = "잘못된 이메일 주소 입니다.";
		}else if(result == LoginResult.FAIL_PASSWORD_WRONG) {
			errorMsg = "잘못된 비밀번호 입니다.";
		}else {
			User dbUser = userService.getUserInfo(user.getUserEmail());
			session.setAttribute("login", dbUser);
			return "redirect:/";
		}
		
		model.addAttribute("loginErrMsg", errorMsg);
		return "redirect:/loginForm";
		
		
	}
}
