package com.skkcandle.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.skkcandle.dto.Review;

@Mapper
public interface reviewDao {
	public List<Review> selectReview(int productId);
	public int count(int productId);
}


