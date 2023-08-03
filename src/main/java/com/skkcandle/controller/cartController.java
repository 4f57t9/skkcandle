package com.skkcandle.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.skkcandle.dto.Cart;

@Controller
@RequestMapping("/cart")
public class cartController {
	@RequestMapping("")
	public String cart() {
		return "/cart/cart";
	}  

 // @GetMapping("cartlist")
   // public Cart read() {
	  
      //  return new ModelAndView("cart/list").addObject("list", list);
    }

