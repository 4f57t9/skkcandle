package com.skkcandle.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skkcandle.dao.productDao;
import com.skkcandle.dto.Product;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
    private productDao productDao; //생성자 주입방식(생성자에 @Autowired 를 붙혀서 컨테이너에서 주입 당한다.)
 
	@Override
	public Product detailProduct(int productId) {
		Product detailProduct = productDao.selectDetailProduct(productId);
		return detailProduct;
	}

}
