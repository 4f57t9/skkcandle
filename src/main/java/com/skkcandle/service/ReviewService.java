package com.skkcandle.service;

import java.util.List;

import com.skkcandle.dto.Review;

public interface ReviewService {
	//public void writeReview(Review review); selectReview 로 인한 주석처리
 	public List<Review> selectReview(int productId);
 	public int getTotalReviewNum(int productId);
}
