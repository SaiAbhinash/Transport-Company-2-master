package com.training.transportcomany2.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

/**
 * 
 * @author Hritik
 *	Authorities model
 */
@Entity
public class Authorities {
	@Id
	String uname;
	
	String authority;

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

	public Authorities(String uname, String authority) {
		super();
		this.uname = uname;
		this.authority = authority;
	}

	public Authorities() {
		super();
	}
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn()
    private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
}
