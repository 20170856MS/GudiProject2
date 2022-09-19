package com.iu.home.licenseorder;

import java.sql.Date;

public class OrderDTO {

	private String orderNum;
	private String scNum;
	private String num;
	private Date orderDate;
	private String payMethod;
	private Long totalPrice;
	private Long imp_uid;
	
	
	
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	public String getScNum() {
		return scNum;
	}
	public void setScNum(String scNum) {
		this.scNum = scNum;
	}
	public Long getNum() {
		return num;
	}
	public void setNum(Long num) {
		this.num = num;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public String getPayMethod() {
		return payMethod;
	}
	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}
	public Long getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Long totalPrice) {
		this.totalPrice = totalPrice;
	}
	public Long getImp_uid() {
		return imp_uid;
	}
	public void setImp_uid(Long imp_uid) {
		this.imp_uid = imp_uid;
	}
	
}
