package com.training.transportcomany2.controllers;

import java.util.List;
import java.util.Optional;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.training.transportcomany2.dto.VehicleDto;
import com.training.transportcomany2.exceptions.UserNotFoundException;
import com.training.transportcomany2.model.Vehicle;
import com.training.transportcomany2.services.VehicleService;


@Controller
@RequestMapping("/manager")
public class ManagerController {
	@Autowired
	ModelMapper modelMapper;
	@Autowired
	VehicleService vehicleService;
	@GetMapping("/")
	public String managerdahsboard(Model model) {
		return "managerlogin";
	}
	
	@GetMapping("/addvehicle")
	public String managerVehicleAdd(Model model) {
		return "addvehicle-manager";
	}
	
	@PostMapping("/VehicleHandler")
	public String addVehicle(VehicleDto vehicleDto) {
		//logger.trace("Vehicle: {}",vehicleDto);
		Vehicle vehicle = modelMapper.map(vehicleDto, Vehicle.class);
		vehicleService.insert(vehicle);
		return "managerlogin";
	}
	@GetMapping("/updatevehicle")
	public ModelAndView goToUpdateVehiclePage(int vehicleId) throws UserNotFoundException {
		
		ModelAndView mv = new ModelAndView();
		Optional<Vehicle> op = vehicleService.findVehicle(vehicleId);
		if(op.isPresent()) {
			Vehicle vehicle = op.get();
					
			//logger.info("redirecting to update vehicle page");
			mv.addObject("vehicle", vehicle);
			mv.setViewName("updateVehicle-manager");
					
			return mv;
		}
		else throw new UserNotFoundException("Vehicle with the given Id not found");
		
	}
	@PostMapping("/VehicleHandler-update")
	public String updateVehicle(VehicleDto vehicleDto) {
		Vehicle vehicle = modelMapper.map(vehicleDto, Vehicle.class);
		vehicleService.insert(vehicle);
		return "";
	}
	
	@GetMapping("/allvehicle")
	public ModelAndView getAllVehcile() {
		ModelAndView mv = new ModelAndView();
		
		List<Vehicle> vehicles = vehicleService.allVehicles();
		
		//logger.info("redirecting to view vehicle page");
		mv.setViewName("viewvehicles-manager");
		mv.addObject("vehicles", vehicles);
		
		return mv;
	}
	
	@ExceptionHandler(value =UserNotFoundException.class)
	public String error(Model m,Exception ex) {
		m.addAttribute("msg", ex.getLocalizedMessage());
		return "error-page";
	}
}
