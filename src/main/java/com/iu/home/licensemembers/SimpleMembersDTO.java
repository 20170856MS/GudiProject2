package com.iu.home.licensemembers;

public class SimpleMembersDTO {
	private Long num;
	private String userName;
	private String email;
	private String phone;
	
	public Long getNum() {
		return num;
	}
	public void setNum(Long num) {
		this.num = num;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
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
		if(this.phone == null) {
			this.phone = "null";
		}
		
		this.phone = phone;
	}
	
	
	
	
}
