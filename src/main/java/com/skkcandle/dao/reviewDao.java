package com.skkcandle.dao;

import org.apache.ibatis.annotations.Mapper;

import com.skkcandle.dto.Review;

@Mapper
public interface reviewDao {
	public void select(Review review);
}
