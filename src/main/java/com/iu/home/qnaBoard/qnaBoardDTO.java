package com.iu.home.qnaBoard;

import java.sql.Date;

public class qnaBoardDTO {
	
	//글제목
	private String title;
	//글내용
	private String contents;
	//작성일
	private Date regDate;
	//조회수
	private Long hit;
	//질문글
	private Long ref;
	//질문글,답글들의 순서
	private Long step;
	//답글
	private Long depth;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	public Long getHit() {
		return hit;
	}
	public void setHit(Long hit) {
		this.hit = hit;
	}
	public Long getRef() {
		return ref;
	}
	public void setRef(Long ref) {
		this.ref = ref;
	}
	public Long getStep() {
		return step;
	}
	public void setStep(Long step) {
		this.step = step;
	}
	public Long getDepth() {
		return depth;
	}
	public void setDepth(Long depth) {
		this.depth = depth;
	}
	
}
