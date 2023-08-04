package com.skkcandle.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skkcandle.dto.Product;
import com.skkcandle.service.ProductService;


@Controller
@RequestMapping("/productDeatil")
public class productController {
	
	   @Autowired
	   private ProductService ProductService;
	   
	@RequestMapping("")
	
	public String detailProduct(int productid, Model model) {
		
		Product product = ProductService.detailProdcut(productid);
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

