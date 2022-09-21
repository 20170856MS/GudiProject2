package com.iu.home.licenseList;

import java.sql.Date;

public class ScheduleDTO {

	private Long scheduleNum;
	private String scheduleName;
	private String scheduleDate;
	
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
