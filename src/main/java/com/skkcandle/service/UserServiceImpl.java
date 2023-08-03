package com.skkcandle.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skkcandle.dto.User;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private com.skkcandle.dao.userDao userDao;

	@Override
	public User getUserInfo(int userId) {
		User userinfo = userDao.select(userId);
		return userinfo;
	}

}
