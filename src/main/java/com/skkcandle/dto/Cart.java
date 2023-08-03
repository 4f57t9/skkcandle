package com.skkcandle.dto;

import lombok.Data;

@Data
public class Cart {
	private int cartId;
	private int productId;
	private int userId;
	private int count;
}
