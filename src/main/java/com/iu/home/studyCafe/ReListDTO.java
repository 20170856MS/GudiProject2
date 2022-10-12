package com.iu.home.studyCafe;

public class ReListDTO {
	private Long reserNum;
	private Long detailNum;
	
	private String scName;
	private Long cdPay;
	private String roomName;
	private String seDate;
	private String seTime;
	private String img;
	private String timeLength;
	
	
	public String getTimeLength() {
		return timeLength;
	}
	public void setTimeLength(String timeLength) {
		this.timeLength = timeLength;
	}
	public Long getReserNum() {
		return reserNum;
	}
	public void setReserNum(Long reserNum) {
		this.reserNum = reserNum;
	}
	public Long getDetailNum() {
		return detailNum;
	}
	public void setDetailNum(Long detailNum) {
		this.detailNum = detailNum;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	public String getScName() {
		return scName;
	}
	public void setScName(String scName) {
		this.scName = scName;
	}
	public Long getCdPay() {
		return cdPay;
	}
	public void setCdPay(Long cdPay) {
		this.cdPay = cdPay;
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
		String[] list = null;
		if(seTime.contains(",")) {
			list = seTime.split(",");
			seTime = list[0]+"~"+list[list.length-1];
		}else {
			this.seTime = seTime;
		}
		return seTime;
	}
	public void setSeTime(String seTime) {
		this.seTime = seTime;
	}
	
}
