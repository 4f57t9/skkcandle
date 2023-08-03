package com.skkcandle.dto;

import java.util.Date;

import lombok.Data;

@Data
public class QnA {
	private int qnaId;
	private int userId;
	private String qnaTitle;
	private String qnaContent;
	private byte[] qnaImage;
	private Date qnaDate;
	private String qnaAnswer;

}
