package com.training.transportcomany2.dto;

public class BookingDto {
	private int userid;
	private String vehicleid;
	private String source;
	private String destination;
	private int driverId;
	private String date;
	
	
	public int getUserid() {
		return userid;
	}



	public void setUserid(int userid) {
		this.userid = userid;
	}



	public String getDate() {
		return date;
	}



	public void setDate(String date) {
		this.date = date;
	}



	public String getVehicleid() {
		return vehicleid;
	}



	public void setVehicleid(String vehicleid) {
		this.vehicleid = vehicleid;
	}



	public String getSource() {
		return source;
	}



	public void setSource(String source) {
		this.source = source;
	}



	public String getDestination() {
		return destination;
	}



	public void setDestination(String destination) {
		this.destination = destination;
	}



	public int getDriverId() {
		return driverId;
	}



	public void setDriverId(int driverId) {
		this.driverId = driverId;
	}



	



	public BookingDto(int userid, String vehicleid, String source, String destination, int driverId, String date) {
		super();
		this.userid = userid;
		this.vehicleid = vehicleid;
		this.source = source;
		this.destination = destination;
		this.driverId = driverId;
		this.date = date;
	}



	public BookingDto() {
		super();
	}
	
	
	
	
}
