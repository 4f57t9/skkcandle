package com.skkcandle.service;

import com.skkcandle.dto.User;

public interface UserService {
	public User getUserInfo(int userId);
	public void join(User user);
}
