package com.skkcandle.service;

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

	@Override
	public void writeReview(Review review) {
		log.info("review: " + review);
		
		reviewDao.select(review);
	}
}
