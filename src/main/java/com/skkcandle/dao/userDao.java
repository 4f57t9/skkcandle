package com.skkcandle.dao;

import org.apache.ibatis.annotations.Mapper;

import com.skkcandle.dto.User;

@Mapper
public interface userDao {
	public User select(String userEmail);
	public void insert(User user);
}
