package com.iu.home;

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
	
	public String getdDay() {
		return dDay;
	}
	public void setdDay(String dDay) {
		this.dDay = dDay;
	}
	private String dDay;
	
	private String scheduleName;
	public String getScheduleName() {
		return scheduleName;
	}
	public void setScheduleName(String scheduleName) {
		this.scheduleName = scheduleName;
	}
	public String getScheduleDate() {
		return scheduleDate;
	}
	public void setScheduleDate(String scheduleDate) {
		this.scheduleDate = scheduleDate;
	}
	private String scheduleDate;

	private ScheduleDTO scheduleDTO;
	
	
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
	
	public ScheduleDTO getScheduleDTO() {
		return scheduleDTO;
	}
	public void setScheduleDTO(ScheduleDTO scheduleDTO) {
		this.scheduleDTO = scheduleDTO;
	}
	@Override
	public String toString() {
		return "HomeDTO [licenseNum=" + licenseNum + ", licenseHits=" + licenseHits + ", licenseName=" + licenseName
				+ ", bookNum=" + bookNum + ", bookName=" + bookName + ", bookImage=" + bookImage + ", bookPrice="
				+ bookPrice + ", jobNum=" + jobNum + ", jobName=" + jobName + ", jobIntro=" + jobIntro
				+ ", scheduleName=" + scheduleName + ", scheduleDate=" + scheduleDate + ", scheduleDTO=" + scheduleDTO
				+ "]";
	}
	
	




	
	
}
