package com.training.transportcomany2.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import com.training.transportcomany2.model.Driver;
import com.training.transportcomany2.repos.DriverRepo;

/**
 * 
 * @author Hritik
 * 
 *	Services for driver database
 */
public class DriverService {
	@Autowired
	DriverRepo driverRepo;
	public void insert(Driver driver) {
		driverRepo.save(driver);
	}
	public List<Driver> allUsers(){
		return driverRepo.findAll();
	}
	
	public Optional<Driver> findUser(long id){
		
		return driverRepo.findById(id);
	}
	
	public void delete(long id) {
		driverRepo.deleteById(id);
	}
}
