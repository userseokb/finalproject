package com.team2.finalproject.dto.user;

import java.sql.Date;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
//notice
public class NoticeDto {

	//notice 번호
	private Integer noticeNo;
	//회원번호
	private Integer userNo;
	//제목
	private String title;
	//유형
	private String state;
	//작성날짜
	private Date writeDate;
	//내용
	private String content;
	//조회수
	private Integer kinds;
	
	@Builder
	public NoticeDto(Integer noticeNo, Integer userNo, String title, String state, Date writeDate, String content,
			Integer kinds) {
		super();
		this.noticeNo = noticeNo;
		this.userNo = userNo;
		this.title = title;
		this.state = state;
		this.writeDate = writeDate;
		this.content = content;
		this.kinds = kinds;
	}
	
	
}
