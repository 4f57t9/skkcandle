package com.skkcandle.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skkcandle.dto.User;
import com.skkcandle.service.UserServiceImpl;

@Controller
@RequestMapping("/payment")
public class paymentController {
	
	Date today;
	
	@Autowired
	UserServiceImpl userService;
	
	@RequestMapping("")
	public String main(HttpSession session, Model model) { // 장바구니 or 상품상세페이지 끝나면 일로 상품정보+상품갯수 정보가 와야함
		//임시로 넣은 회원 데이터
		User imsiUser = new User();
		imsiUser.setUserAddress("열두시 그리구 그러므로 강호동 강백호");
		imsiUser.setUserBirthDay(today);
		imsiUser.setUserEmail("candle@naver.com");
		imsiUser.setUserGrade("Gold");
		imsiUser.setUserId(1);
		imsiUser.setUserName("강호동");
		imsiUser.setUserPhone("010-1234-1234");
		
		session.setAttribute("login", imsiUser);
		
		//임시로 넣은 구매상품 데이터
		String imsiProduct = "임시 상품";
		model.addAttribute("productinfo", imsiProduct);
		int imsiPnum = 3;
		model.addAttribute("productnum", imsiPnum);
		int imsiprice =10000;
		model.addAttribute("productprice", imsiprice);
		
		User sessionUser = (User) session.getAttribute("login"); //추후에 login 이름으로 User 형식으로 세션에 setAttribute할거임(로그인할때)
		
		//로그인 한 사람의 정보 
		model.addAttribute("userinfo", sessionUser);
		//사용자의 구매리스트
		
		return "/payment/payment";
	}
	
}
