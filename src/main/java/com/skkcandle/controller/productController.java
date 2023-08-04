package com.skkcandle.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skkcandle.dto.Product;
import com.skkcandle.service.ProductService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
//@RequestMapping("/productDetail")
public class productController {
	
    @Autowired
    private ProductService ProductService;
	   
	@RequestMapping("/productDetail")
	
	public String detailProduct( Model model) {
		int productId = 1;
		log.info("제품번호" + productId);
		Product product = ProductService.detailProduct(productId);
		model.addAttribute("detailproduct", product);
		
		return "/productDetail/detailView";
	}
	

	
	/*
	
	   @GetMapping("/detailProduct")
	   public String detailProduct(int bno, Model model) {
	      Ch13Board board = boardService.getBoard(bno); //서비스를 거친후 리턴 값을 board에다 담아준다
	      model.addAttribute("board", board); //jsp에 뿌려주기 위해서 model 객체에 담는다.
	      
	      if(board.getBattachdata() != null) { //보드에 모든 값들이 들어가 있다.
	    	  //0과 1로 구성된 바이너리 데이터를 base64 문자열로 변환
	    	  String base64Img = Base64.getEncoder().encodeToString(board.getBattachdata());
	    	  model.addAttribute("base64Img", base64Img);
	    	  
	      }
	      
	      return "ch13/detailBoard";
	   }*/

	
}

