package com.skkcandle.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skkcandle.dto.Review;
import com.skkcandle.service.ReviewService;

@Controller
public class homeController {
	
	@Resource
	private ReviewService reviewService;
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/header")
	public String header() {
		return "header";
	}
	
	@RequestMapping("/newHeader")
	public String newHeader() {
		return "newHeader";
	}
	
	@RequestMapping("/navHeader")
	public String navHeader() {
		return "/header/navHeader";
	}
	
	@RequestMapping("/mainPage")
	public String mainPage() {
		return "/mainPage/mainPage";
	}
	
	@RequestMapping("/footer")
	public String footer() {
		return "/footer/footer";
	}
	
	
	
	@PostMapping("/writeReview")
	public String writeReview(Review review) {
		
		
		reviewService.writeReview(review);
		
		return "redirect:/";
	}
}
