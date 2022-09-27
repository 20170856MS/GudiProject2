package com.iu.home.licenseQna;

import java.sql.Date;
import java.util.List;

public class QnaDTO {
	
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
	//글번호
	private Long qnaNum;
	//자격증번호
	private Long licenseNum;
	//작성자
	private String writer;
	
	private List<QnaFileDTO> qnaFileDTOs;
	
	
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
	public Long getQnaNum() {
		return qnaNum;
	}
	public void setQnaNum(Long qnaNum) {
		this.qnaNum = qnaNum;
	}
	public Long getLicenseNum() {
		return licenseNum;
	}
	public void setLicenseNum(Long licenseNum) {
		this.licenseNum = licenseNum;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public List<QnaFileDTO> getQnaFileDTOs() {
		return qnaFileDTOs;
	}
	public void setQnaFileDTOs(List<QnaFileDTO> qnaFileDTOs) {
		this.qnaFileDTOs = qnaFileDTOs;
	}
	
	
	
	
	
}
