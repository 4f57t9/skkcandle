package com.skkcandle.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skkcandle.dto.Review;
import com.skkcandle.service.ProductService;
import com.skkcandle.service.ReviewService;

@Controller
public class reviewController {
	
	//리뷰 컨트롤러 착각으로 잘 못 만듬 지워도 상관없음 (조성진)
/*	  @Autowired  
	  	private ProductService ProductService;
	  @Autowired
	  	private ReviewService ReviewService;
		   
		@RequestMapping("/reviewDetail")
		public String prodcutReview(Model model) {
			int productId = 1;
			List<Review> review = ReviewService.selectReview(productId);
			model.addAttribute("productviews", review);
			
			return "/productDetail/detailView";
		}
		
*/
}
