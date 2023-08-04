package com.skkcandle.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/join")
public class joinController {
	@RequestMapping("")
	public String joinmain() {
		
		return "join/joinForm";
	}
	
	
}
