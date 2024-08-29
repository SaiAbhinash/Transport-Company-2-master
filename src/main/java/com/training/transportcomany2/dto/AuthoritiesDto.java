package com.training.transportcomany2.dto;

import com.training.transportcomany2.model.User;

public class AuthoritiesDto {
	private String uname;
	
	private String authority;
	private User user;
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public AuthoritiesDto(String uname, String authority, User user) {
		super();
		this.uname = uname;
		this.authority = authority;
		this.user = user;
	}
	public AuthoritiesDto() {
		super();
	}
	
	
}
