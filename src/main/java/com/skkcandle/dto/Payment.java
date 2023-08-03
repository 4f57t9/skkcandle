package com.skkcandle.dto;

import java.util.Date;

import lombok.Data;

@Data
public class Payment {
	private int paymentId;
	private int orderId;
	private Date paymentDate;
	private int paymentPrice;
	private String paymentType;
	private String paymentStatus;
}
