package com.skkcandle.service;

import com.skkcandle.dto.User;

public interface UserService {
	public enum JoinResult{
		SUCCESS,
		FAIL_DUPLICATED_Email
	}
	
	public User getUserInfo(String userEmail);
	public JoinResult join(User user);
}
