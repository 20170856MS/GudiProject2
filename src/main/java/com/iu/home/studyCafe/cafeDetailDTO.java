package com.iu.home.studyCafe;

public class cafeDetailDTO extends cafeDTO{
	
	private Long cdPay;
	private String cdRegion;
	private String scExplain;
	
	
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
