package com.iu.home.licenseList;

import com.iu.home.licenseQna.QnaDTO;

public class LicenseDTO extends QnaDTO {

	private Long licenseNum;
	private Long licenseHits;
	private String licenseName;
	private BookDTO bookDTO;
	private VideoDTO videoDTO;
	private JobDTO jobDTO;
	private String scheduleName1;
	private String scheduleDate1;
	private String scheduleName2;
	private String scheduleDate2;
	

	
	public String getScheduleName1() {
		return scheduleName1;
	}
	public void setScheduleName1(String scheduleName1) {
		this.scheduleName1 = scheduleName1;
	}
	public String getScheduleDate1() {
		return scheduleDate1;
	}
	public void setScheduleDate1(String scheduleDate1) {
		this.scheduleDate1 = scheduleDate1;
	}
	public String getScheduleName2() {
		return scheduleName2;
	}
	public void setScheduleName2(String scheduleName2) {
		this.scheduleName2 = scheduleName2;
	}
	public String getScheduleDate2() {
		return scheduleDate2;
	}
	public void setScheduleDate2(String scheduleDate2) {
		this.scheduleDate2 = scheduleDate2;
	}
	public Long getLicenseNum() {
		return licenseNum;
	}
	public void setLicenseNum(Long licenseNum) {
		this.licenseNum = licenseNum;
	}
	public String getLicenseName() {
		return licenseName;
	}
	public void setLicenseName(String licenseName) {
		this.licenseName = licenseName;
	}
	public BookDTO getBookDTO() {
		return bookDTO;
	}
	public void setBookDTO(BookDTO bookDTO) {
		this.bookDTO = bookDTO;
	}
	public VideoDTO getVideoDTO() {
		return videoDTO;
	}
	public void setVideoDTO(VideoDTO videoDTO) {
		this.videoDTO = videoDTO;
	}
	public JobDTO getJobDTO() {
		return jobDTO;
	}
	public void setJobDTO(JobDTO jobDTO) {
		this.jobDTO = jobDTO;
	}
	public Long getLicenseHits() {
		return licenseHits;
	}
	public void setLicenseHits(Long licenseHits) {
		this.licenseHits = licenseHits;
	}
	
}
