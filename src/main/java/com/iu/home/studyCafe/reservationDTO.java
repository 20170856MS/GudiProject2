package com.iu.home.studyCafe;

import java.sql.Date;
import java.sql.Time;

public class reservationDTO {
	
	private Date startDate;
	private Date endDate;
	private Time startTime;
	private Time endTime;
	private Long seat;
	
	
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public Time getStartTime() {
		return startTime;
	}
	public void setStartTime(Time startTime) {
		this.startTime = startTime;
	}
	public Time getEndTime() {
		return endTime;
	}
	public void setEndTime(Time endTime) {
		this.endTime = endTime;
	}
	public Long getSeat() {
		return seat;
	}
	public void setSeat(Long seat) {
		this.seat = seat;
	}
	
	
}
