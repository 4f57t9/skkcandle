package com.skkcandle.dto;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class User {
	private int userId;
	private String userName;
	private String userPassword;
	private String userEmail;
	private String userPhone;
	private String userAddress;
	private Date userJoinDate;
	private Date userBirthDay;
	private String userGrade;
	
	//방법 2를 쓴다.
	/*private MultipartFile userImage;
	private String userImageoname;
	private String userImagesname;
	
	private byte[] userImagedata;*/
	
	/*private User(String userEmail, String userPassword) {
		userEmail = this.userEmail;
		userPassword = this.userPassword;
	}*/
}
