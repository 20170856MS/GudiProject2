package com.iu.home.licenseList;

import java.util.Collections;
import java.util.List;

public class ArrDTO {

	private List<String> arr1;
	private List<String> arr2;
	private String sbvj;
	private Long licenseNum;
	private Long scheduleNum;
	private Long bookNum;
	private Long videoNum;
	private Long jobNum;
	
	public Long getBookNum() {
		return bookNum;
	}
	public void setBookNum(Long bookNum) {
		this.bookNum = bookNum;
	}
	public Long getVideoNum() {
		return videoNum;
	}
	public void setVideoNum(Long videoNum) {
		this.videoNum = videoNum;
	}
	public Long getJobNum() {
		return jobNum;
	}
	public void setJobNum(Long jobNum) {
		this.jobNum = jobNum;
	}
	public Long getScheduleNum() {
		return scheduleNum;
	}
	public void setScheduleNum(Long scheduleNum) {
		this.scheduleNum = scheduleNum;
	}
	public Long getLicenseNum() {
		return licenseNum;
	}
	public void setLicenseNum(Long licenseNum) {
		this.licenseNum = licenseNum;
	}
	public List<String> getArr1() {
		return arr1;
	}
	public void setArr1(List<String> arr1) {
		this.arr1 = arr1;
	}
	public List<String> getArr2() {
		return arr2;
	}
	public void setArr2(List<String> arr2) {
		this.arr2 = arr2;
	}
	public String getSbvj() {
		return sbvj;
	}
	public void setSbvj(String sbvj) {
		this.sbvj = sbvj;
	}

	
	
}
