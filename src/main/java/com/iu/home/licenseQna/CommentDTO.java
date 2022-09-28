package com.iu.home.licenseQna;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class CommentDTO {
	
	private Long num;
	private String writer;
	private String contents;
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date regDate;
	
	
	public Long getNum() {
		return num;
	}
	public void setNum(Long num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	

}
