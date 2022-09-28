package com.iu.home.studyCafe;

import java.sql.Date;
import java.sql.Time;

public class reservationDTO {
	
	private Long roomNum;
	private String roomName;
	private String seDate;
	private String seTime;
	
	
	public Long getRoomNum() {
		return roomNum;
	}
	public void setRoomNum(Long roomNum) {
		this.roomNum = roomNum;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public String getSeDate() {
		return seDate;
	}
	public void setSeDate(String seDate) {
		this.seDate = seDate;
	}
	public String getSeTime() {
		return seTime;
	}
	public void setSeTime(String seTime) {
		this.seTime = seTime;
	}
	
}
