package com.skkcandle.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skkcandle.dao.reviewDao;
import com.skkcandle.dto.Review;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class ReviewServiceImpl implements ReviewService{
	@Autowired
	private reviewDao reviewDao;

	/*@Override
	public void writeReview(Review review) {
		log.info("review: " + review);
		
		reviewDao.selectReview(review);
	}*/

	@Override
	public List<Review> selectReview(int productId) {
	List<Review> productReview = reviewDao.selectReview(productId);			
		return productReview;
	}

	@Override
	public int getTotalReviewNum(int productId) {
	   int totalReviewNum = reviewDao.count(productId);
	   return totalReviewNum;
	}
}
