	package com.iu.home.licenseList;

import java.sql.Date;

public class ScheduleDTO {

	private Long scheduleNum;
	private String scheduleName;
	private String scheduleDate;
	private LicenseDTO licenseDTO;

	
	
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

	
	
	
}
