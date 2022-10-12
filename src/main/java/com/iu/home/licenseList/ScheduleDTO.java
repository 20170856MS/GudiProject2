	package com.iu.home.licenseList;

import com.iu.home.HomeDTO;

public class ScheduleDTO {

	private Long scheduleNum;
	private String scheduleName;
	private String scheduleDate;
	private LicenseDTO licenseDTO;

	private HomeDTO homeDTO;
	
	
	public LicenseDTO getLicenseDTO() {
		return licenseDTO;
	}
	public void setLicenseDTO(LicenseDTO licenseDTO) {
		this.licenseDTO = licenseDTO;
	}
	public Long getScheduleNum() {
		return scheduleNum;
	}
	public void setScheduleNum(Long scheduleNum) {
		this.scheduleNum = scheduleNum;
	}
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
	public HomeDTO getHomeDTO() {
		return homeDTO;
	}
	public void setHomeDTO(HomeDTO homeDTO) {
		this.homeDTO = homeDTO;
	}
	
}
