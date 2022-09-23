package com.iu.home.studyCafe;

public class cafeDetailDTO{
	
	
	private Long detailNum;
	private Long cdPay;
	private String cdRegion;
	private String scExplain;
	private String img;
	private String scName;
	
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
	
	
	
	public Long getDetailNum() {
		return detailNum;
	}
	public void setDetailNum(Long detailNum) {
		this.detailNum = detailNum;
	}
	public Long getCdPay() {
		return cdPay;
	}
	public void setCdPay(Long cdPay) {
		this.cdPay = cdPay;
	}
	public String getCdRegion() {
		return cdRegion;
	}
	public void setCdRegion(String cdRegion) {
		this.cdRegion = cdRegion;
	}

	public String getScExplain() {
		return scExplain;
	}
	public void setScExplain(String scExplain) {
		this.scExplain = scExplain;
	}
	
	
}
