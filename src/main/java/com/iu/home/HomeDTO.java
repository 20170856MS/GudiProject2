package com.iu.home;

import java.util.List;

import com.iu.home.licenseList.ScheduleDTO;

public class HomeDTO extends ScheduleDTO {
	
	private Long licenseNum;
	private Long licenseHits;
	private String licenseName;
	
	private Long bookNum;
	private String bookName;
	private String bookImage;
	private Long bookPrice;
	
	private Long jobNum;
	private String jobName;
	private String jobIntro;

	private Long licenseScheduleNum;
	private Long scheduleNum;
	
	private List<ScheduleDTO> scheduleDTOs;
	
	
	public Long getLicenseNum() {
		return licenseNum;
	}
	public void setLicenseNum(Long licenseNum) {
		this.licenseNum = licenseNum;
	}
	public Long getLicenseHits() {
		return licenseHits;
	}
	public void setLicenseHits(Long licenseHits) {
		this.licenseHits = licenseHits;
	}
	public String getLicenseName() {
		return licenseName;
	}
	public void setLicenseName(String licenseName) {
		this.licenseName = licenseName;
	}
	public Long getBookNum() {
		return bookNum;
	}
	public void setBookNum(Long bookNum) {
		this.bookNum = bookNum;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getBookImage() {
		return bookImage;
	}
	public void setBookImage(String bookImage) {
		this.bookImage = bookImage;
	}
	public Long getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(Long bookPrice) {
		this.bookPrice = bookPrice;
	}
	public Long getJobNum() {
		return jobNum;
	}
	public void setJobNum(Long jobNum) {
		this.jobNum = jobNum;
	}
	public String getJobName() {
		return jobName;
	}
	public void setJobName(String jobName) {
		this.jobName = jobName;
	}
	public String getJobIntro() {
		return jobIntro;
	}
	public void setJobIntro(String jobIntro) {
		this.jobIntro = jobIntro;
	}
	public Long getLicenseScheduleNum() {
		return licenseScheduleNum;
	}
	public void setLicenseScheduleNum(Long licenseScheduleNum) {
		this.licenseScheduleNum = licenseScheduleNum;
	}
	public Long getScheduleNum() {
		return scheduleNum;
	}
	public void setScheduleNum(Long scheduleNum) {
		this.scheduleNum = scheduleNum;
	}
	public List<ScheduleDTO> getScheduleDTOs() {
		return scheduleDTOs;
	}
	public void setScheduleDTOs(List<ScheduleDTO> scheduleDTOs) {
		this.scheduleDTOs = scheduleDTOs;
	}



	
	
}
