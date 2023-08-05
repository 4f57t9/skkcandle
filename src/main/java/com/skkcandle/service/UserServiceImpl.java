package com.skkcandle.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.skkcandle.dto.User;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private com.skkcandle.dao.userDao userDao;

	@Override
	public User getUserInfo(String userEmail) {
		User userinfo = userDao.select(userEmail);
		return userinfo;
	}

	@Override
	public JoinResult join(User user) {
		log.info(user.getUserEmail());
		User dbUser = userDao.select(user.getUserEmail());
		log.info("dbUser: " +dbUser);
		//db에 해당 이메일을 가진 유저가 있는지 검색
		//해당 이메일이 이미 있을경우
		if(dbUser != null) {
			return JoinResult.FAIL_DUPLICATED_Email;
		}
		//정상적으로 회원가입이 될 경우
		//비밀번호는 암호화를 해서 db에 세팅한다.
		PasswordEncoder pwEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
		user.setUserPassword(pwEncoder.encode(user.getUserPassword()));
		userDao.insert(user);
		
		return JoinResult.SUCCESS;
	}

	@Override
	public LoginResult login(User user) {
		User dbUser = userDao.select(user.getUserEmail());
		if(dbUser == null) {
			return LoginResult.FAIL_EMAIL_WRONG;
		}
		PasswordEncoder pwEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
		if(pwEncoder.matches(user.getUserPassword(), dbUser.getUserPassword())) {
			return LoginResult.SUCCESS;
		}else {
			return LoginResult.FAIL_PASSWORD_WRONG;
		}
	}

}
