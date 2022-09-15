package com.iu.home.licensemembers;

import java.util.List;

public class LicenseMembersDTO {
	private Long num;
	private String areaName;
	private String userName;
	private String password;
	private String name;
	private String email;
	private String phone;
	
	private List<AdminRoleDTO> adminRoleDTOs;

	
	
	public List<AdminRoleDTO> getAdminRoleDTOs() {
		return adminRoleDTOs;
	}
	public void setAdminRoleDTOs(List<AdminRoleDTO> adminRoleDTOs) {
		this.adminRoleDTOs = adminRoleDTOs;
	}
	public Long getNum() {
		return num;
	}
	public void setNum(Long num) {
		this.num = num;
	}
	
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
	
}
