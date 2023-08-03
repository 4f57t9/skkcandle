package com.skkcandle.dto;

import java.util.Date;

import lombok.Data;

@Data
public class Cancel {
	private int cancelId;
	private int orderId;
	private String cancelReason;
	private Date cancelRequestDate;
	private Date cancelCompleteDate;
}
