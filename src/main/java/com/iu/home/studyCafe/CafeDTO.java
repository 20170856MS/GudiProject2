package com.iu.home.studyCafe;

public class CafeDTO {

	private Long scNum;
	private Long areaNum;
	private String scName;
	private String img;
	private String areaName;
	
	private double latitude;
	private double longitude;
	
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public Long getScNum() {
		return scNum;
	}
	public void setScNum(Long scNum) {
		this.scNum = scNum;
	}
	public Long getAreaNum() {
		return areaNum;
	}
	public void setAreaNum(Long areaNum) {
		this.areaNum = areaNum;
	}
	public String getScName() {
		return scName;
	}
	public void setScName(String scName) {
		this.scName = scName;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	
	
}
