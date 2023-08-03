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
		return "newHeader";
	}
	
	@RequestMapping("/header")
	public String header() {
		return "header";
	}
	
	@PostMapping("/writeReview")
	public String writeReview(Review review) {
		
		
		reviewService.writeReview(review);
		
		return "redirect:/";
	}
}
