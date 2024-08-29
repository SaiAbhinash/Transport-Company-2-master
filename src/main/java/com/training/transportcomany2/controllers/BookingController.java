package com.training.transportcomany2.controllers;

import java.util.List;
import java.util.NoSuchElementException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.training.transportcomany2.model.Booking;
import com.training.transportcomany2.model.Vehicle;
import com.training.transportcomany2.services.BookingService;
import com.training.transportcomany2.services.VehicleService;
/**
 * 
 * @author Abhi
 * 
 * Controller for booking operation
 */
@Controller
@RequestMapping("/user")
public class BookingController {
	private Logger log = LoggerFactory.getLogger(BookingController.class);

	@Autowired
	private BookingService service;
	@Autowired
	VehicleService vehicleService;
	
	
	
	
	@GetMapping("/")
	public String udahsboard(Model model) {
		return "VehicleDataDisplay";
	}
	
	@GetMapping("/register")
	public String showReg() {
		return "VehicleReg";
	}

	@PostMapping("/save")
	public String saveBook(@ModelAttribute Booking book, Model model) {
		log.info("ENTERED INTO SAVE BookingMETHOD");
		try {

			Integer eid = service.book(book);
			log.info("Booking SAVED");
			String message = " Booking '" + eid + "' saved ";
			model.addAttribute("msg", message);
		} catch (Exception e) {
			log.error("UNABLE TO PROCESS SAVE Booking{}", e.getMessage());
			e.printStackTrace();
		}
		log.info("ABOUT TO RETURN REPONSE FROM SAVE Booking METHOD");
		return "VehicleReg";
	}

	@GetMapping("/bookings")
	public String showAllEmps(@PageableDefault(page = 0, size = 3) Pageable pageable, Model model) {
		log.info("ENTERED INTO MANAGER ADDED Booking");
		Page<Vehicle> page = vehicleService.getManagerBookings(pageable);
		List<Vehicle> list = page.getContent();
		model.addAttribute("list", list);
		model.addAttribute("page", page);
		log.info("ABOUT TO RETURN RESPONSE FROM SHOW ALL MANAGER Bookings");
		return "VehicleDataDisplay";
	}

	@GetMapping("/all")
	public String showAllBookings(@PageableDefault(page = 0, size = 3) Pageable pageable, Model model) {
		log.info("ENTERED INTO SHOW ALL Booking");
		Page<Booking> page = service.getAllBookings(pageable);
		List<Booking> list = page.getContent();

		model.addAttribute("list", list);
		model.addAttribute("page", page);
		log.info("ABOUT TO RETURN RESPONSE FROM SHOW ALL Booking");
		return "VehicleData";
	}

	@GetMapping("/delete")
	public String removeEmp(@RequestParam Integer eid, Model model) {
		log.info("ENTERED INTO DELETE Booking");

		service.delete(eid);
		log.info("DELETE SUCCESSFUL FOR Booking");
		log.info("ABOUT TO RETURN RESPONSE FROM DELETE Booking");
		return "redirect:all";
	}

	@GetMapping("/edit")
	public String showEdit(@RequestParam Integer eid, Model model) {

		try {
			log.info("ENTERED INTO SHOW EDIT PAGE");
			Booking emp = service.getOneBooking(eid);

			model.addAttribute("employee", emp);
			log.info("EDIT SUCCESSFUL FOR Booking");

		} catch (NoSuchElementException e) {
			e.printStackTrace();
			throw e;
		}
		log.info("ABOUT TO RETURN RESPONSE FROM EDIT Booking");
		return "VehicleEdit";
	}

	@PostMapping("/update")
	public String updateEmp(

			@ModelAttribute Booking book) {
		log.info("ENTERED INTO UPDATE Booking");
		service.updateBook(book);
		log.info("UPDATE SUCCESSFUL FOR Booking");
		log.info("ABOUT TO RETURN RESPONSE FROM UPDATE Booking");
		return "redirect:all";
	}

}
