package com.skkcandle.dto;

import java.util.Date;

import lombok.Data;

@Data
public class Review {
	private int reviewId;
	private int productId;
	private int userId;
	private String reviewTitle;
	private Date reviewDate;
	private int ratingScore;
	private String reviewContent;
}
