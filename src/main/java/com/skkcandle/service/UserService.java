package com.skkcandle.service;

import com.skkcandle.dto.User;

public interface UserService {
	public enum JoinResult{
		SUCCESS,
		FAIL_DUPLICATED_Email
	}
	
	public enum LoginResult{
		SUCCESS,
		FAIL_EMAIL_WRONG,
		FAIL_PASSWORD_WRONG
	}
	
	public User getUserInfo(String userEmail);
	public JoinResult join(User user);
	public LoginResult login(User user);
}
