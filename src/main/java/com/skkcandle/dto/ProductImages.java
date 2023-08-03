package com.skkcandle.dto;

import lombok.Data;

@Data
public class ProductImages {
	private int productImageId;
	private int productId;
	private byte[] productImage;
}
