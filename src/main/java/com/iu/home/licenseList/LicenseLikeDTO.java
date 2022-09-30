package com.iu.home.licenseList;

import java.sql.Date;

public class LicenseLikeDTO {

	private Long likeNum;
	private Long num;
	private Long licenseNum;
	private Date likeDate;
	
	public Long getLikeNum() {
		return likeNum;
	}
	public void setLikeNum(Long likeNum) {
		this.likeNum = likeNum;
	}
	public Long getNum() {
		return num;
	}
	public void setNum(Long num) {
		this.num = num;
	}
	public Long getLicenseNum() {
		return licenseNum;
	}
	public void setLicenseNum(Long licenseNum) {
		this.licenseNum = licenseNum;
	}
	public Date getLikeDate() {
		return likeDate;
	}
	public void setLikeDate(Date likeDate) {
		this.likeDate = likeDate;
	}
	
	
}
