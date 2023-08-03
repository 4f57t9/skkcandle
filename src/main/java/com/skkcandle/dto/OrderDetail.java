package com.skkcandle.dto;

import lombok.Data;

@Data
public class OrderDetail {
	private int userId;
	private int productId;
	private int orderId;
	private int quantity;
}
