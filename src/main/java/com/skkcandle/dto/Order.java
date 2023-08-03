package com.skkcandle.dto;

import java.util.Date;

import lombok.Data;

@Data
public class Order {
	private int orderId;
	private int userId;
	private Date orderDate;
	private String orderStatus;
	private String shippingAdress;
	private int totalPrice;
}
