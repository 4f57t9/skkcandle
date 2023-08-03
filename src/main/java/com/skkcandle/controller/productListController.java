package com.skkcandle.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/productList")
public class productListController {
	@RequestMapping("")
	public String productList() {
		
		return "/productList/main";
	}
}
