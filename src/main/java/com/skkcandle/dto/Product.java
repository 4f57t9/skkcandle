package com.skkcandle.dto;

import lombok.Data;

@Data
public class Product {
	private int productId;
	private String productName;
	private int productPrice;
	private int productStock;
	private String productMaker;
	private byte[] productImage;
}
