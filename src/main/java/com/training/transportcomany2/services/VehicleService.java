package com.training.transportcomany2.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.training.transportcomany2.model.Booking;
import com.training.transportcomany2.model.Vehicle;
import com.training.transportcomany2.repos.VehicleRepo;

/**
 * 
 * @author Hritik
 *	Service for Vehicle Database
 */
@Service
public class VehicleService {
	@Autowired
	VehicleRepo vehicleRepo;
	public Vehicle insert(Vehicle vehicle) {
		return vehicleRepo.save(vehicle);
	}
	public List<Vehicle> allVehicles(){
		return vehicleRepo.findAll();
	}
	public Optional<Vehicle> findVehicle(int id){
		return vehicleRepo.findById(id);
	}
	
	public void deleteVehicle(int id) {
		vehicleRepo.deleteById(id);
		return ;
	}
	
	public Page<Vehicle> getManagerBookings(Pageable pageable) {
		return vehicleRepo.findAll(pageable);
	}
}
