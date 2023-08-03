package com.skkcandle.dto;

import java.util.Date;

import lombok.Data;

@Data
public class Refund {
	private int refundId;
	private int orderId;
	private int refundPrice;
	private String refundReason;
	private Date refundRequestDate;
	private Date refundCompleteDate;
}
