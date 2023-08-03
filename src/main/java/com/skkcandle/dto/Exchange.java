package com.skkcandle.dto;

import java.util.Date;

import lombok.Data;

@Data
public class Exchange { 
	private int exchangeId;
	private int orderId;
	private String exchangeReason;
	private Date exchangeRequestDate;
	private Date exchangeCompleteDate;
}
