package com.iu.home.licenseorder;

import java.sql.Date;

import com.iu.home.studyCafe.ReListDTO;
import com.iu.home.studyCafe.ReservationDTO;

public class OrderDTO extends ReListDTO  {

	private Long orderNum;
	private Long productNum;
	private Long num;
	private String productName;
	private Date orderDate;
	private Long totalPrice;
	private String imp_uid;
	private Long reserNum;
	
	// 카페리스트 이미지용
	private String img;
	public String getImg() {
		return img;
	}
	
	public void setImg(String img) {
		this.img = img;
	}
	// user 정보 
	private String userName;
	private String name;
	private String email;
	private String phone;
	
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Long getReserNum() {
		return reserNum;
	}
	public void setReserNum(Long reserNum) {
		this.reserNum = reserNum;
	}
	public Long getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(Long orderNum) {
		this.orderNum = orderNum;
	}
	public Long getProductNum() {
		return productNum;
	}
	public void setProductNum(Long productNum) {
		this.productNum = productNum;
	}
	
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
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
	public Long getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(Long totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getImp_uid() {
		return imp_uid;
	}
	public void setImp_uid(String imp_uid) {
		this.imp_uid = imp_uid;
	}
	
	
	
	
	
	
}
