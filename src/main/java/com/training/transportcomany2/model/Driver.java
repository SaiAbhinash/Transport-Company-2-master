package com.training.transportcomany2.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * 
 * @author Hritik
 * 
 *	Entity for Driver Database
 */
@Entity
@Table(name = "drivers")
public class Driver {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String FirstName;
	private String LastName;
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	private String uname;
	private String password;
	private int contactno;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getContactno() {
		return contactno;
	}
	public void setContactno(int contactno) {
		this.contactno = contactno;
	}
	
	
	@Override
	public String toString() {
		return "User [id=" + id + ", FirstName=" + FirstName + ", LastName=" + LastName + ", uname=" + uname
				+ ", password=" + password + ", contactno=" + contactno + "]";
	}
	public Driver(int id, String firstName, String lastName, String uname, String password, int contactno) {
		super();
		this.id = id;
		this.FirstName = firstName;
		this.LastName = lastName;
		this.uname = uname;
		this.password = password;
		this.contactno = contactno;
	}
	public Driver() {
		// TODO Auto-generated constructor stub
	}
}