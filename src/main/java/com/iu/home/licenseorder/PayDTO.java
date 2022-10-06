package com.iu.home.licenseorder;

import java.sql.Date;

public class PayDTO {

	// num -- 회원번호
	// orderNum - 주문번호
	private Long payNum;
	private Long num;
	// orderNum -> FK SC_ORDER_USER orderNum 받기
	private Long orderNum;
	private String payMethod;
	private String payName;
	private Date payDate; // sysdate
	private Long payAmount;
	
	public Long getPayNum() {
		return payNum;
	}
	public void setPayNum(Long payNum) {
		this.payNum = payNum;
	}
	
	
	
	public Long getNum() {
		return num;
	}
	public void setNum(Long num) {
		this.num = num;
	}
	public Long getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(Long orderNum) {
		this.orderNum = orderNum;
	}
	public String getPayMethod() {
		return payMethod;
	}
	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}
	public String getPayName() {
		return payName;
	}
	public void setPayName(String payName) {
		this.payName = payName;
	}
	public Date getPayDate() {
		return payDate;
	}
	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}
	public Long getPayAmount() {
		return payAmount;
	}
	public void setPayAmount(Long payAmount) {
		this.payAmount = payAmount;
	}
	
	
	
}
