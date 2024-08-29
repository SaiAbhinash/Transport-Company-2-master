package com.training.transportcomany2.services;

import java.util.List;
import java.util.NoSuchElementException;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;


import com.training.transportcomany2.model.Booking;
import com.training.transportcomany2.repos.BookingRepo;
/**
 * 
 * @author Abhi
 * 
 * Services for booking table
 */
@Service
public class BookingService {
	
	@Autowired
	BookingRepo bookingRepo;
	
	public Integer book(Booking b) {
		
		b=bookingRepo.save(b);
		return b.getUserid();
	}
	
	public List<Booking> getAllBookings(){
		return bookingRepo.findAll();
	}
	
	public void updateBook(Booking b) {
		if(bookingRepo.existsById(b.getUserid()))
		{
			bookingRepo.save(b);
		}
	}
	
	public Booking getOneBooking(Integer id) {
		return bookingRepo.findById(id)
				.orElseThrow(
						NoSuchElementException::new
						);
		
	}
	public void delete(int id) {
		Booking b= getOneBooking(id);
		bookingRepo.delete(b);
	}
	
	public Page<Booking> getAllBookings(Pageable pageable) {
		return bookingRepo.findAll(pageable);
	}
	
	public Page<Booking> getManagerBookings(Pageable pageable) {
		return bookingRepo.findAll(pageable);
	}
	
}
