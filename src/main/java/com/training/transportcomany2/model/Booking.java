package com.training.transportcomany2.model;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * 
 * @author Abhi
 *	Booking Entity
 */
@Entity
public class Booking {
	@Override
	public String toString() {
		return "Booking [userid=" + userid + ", vehicleid=" + vehicleid + ", source=" + source + ", destination="
				+ destination + ", driverId=" + driverId + ", date=" + date + "]";
	}
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int userid;
	private String vehicleid;
	private String source;
	private String destination;
	private int driverId;
	private String date;
	
	public Booking(int userid, String vehicleid, String source, String destination, int driverId, String date) {
		super();
		this.userid = userid;
		this.vehicleid = vehicleid;
		this.source = source;
		this.destination = destination;
		this.driverId = driverId;
		this.date = date;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
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

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Booking() {
		
	}
}
