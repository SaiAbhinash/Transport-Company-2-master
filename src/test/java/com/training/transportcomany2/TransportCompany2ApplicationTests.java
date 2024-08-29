package com.training.transportcomany2;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;

import com.training.transportcomany2.model.User;
import com.training.transportcomany2.model.Vehicle;
import com.training.transportcomany2.repos.UserRepo;
import com.training.transportcomany2.repos.VehicleRepo;
import com.training.transportcomany2.services.UserService;
import com.training.transportcomany2.services.VehicleService;
/**
 * 
 * @author Hritik
 * Tests
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class TransportCompany2ApplicationTests {
	@Autowired
	private UserService userService;
	
	@MockBean
	private UserRepo userRepository;
	
	@Autowired
	private VehicleService vehicleService;
	
	@MockBean
	private VehicleRepo vehicleRepo;
	
	/**
	 * Test to get All Users
	 */
	@Test
	public void getUsersTest() {
		when(userRepository.findAll()).thenReturn(Stream.of(new User(1,"Hritik","Singh","HS","PASS",8392),new User(2,"Hritik","Singhh","HS","PASSwo",839232)).collect(Collectors.toList()));
		
		assertEquals(2,userService.allUsers().size());
	}
	
	/**
	 * Test to get User by username
	 */
	@Test
	public void getUserByUname() {
		String uname = "hritik";
		User user = new User(1,"Hritik","Singh","HS","PASS",8392);
		when(userRepository.findByUname(uname)).thenReturn(user);
		
		assertEquals(user,userService.findUserByUname(uname));
	}
	
	/**
	 * Test to save user in database
	 */
	@Test
	public void saveUserTest() {
		User user = new User(1,"Hritik","Singh","HS","PASS",8392);
		when(userRepository.save(user)).thenReturn(user);
		
		assertEquals(user,userService.insert(user));
	}
	
	/**
	 * Test to delete a user from database
	 */
	@Test
	public void deleteUserTest() {
		User user = new User(1,"Hritik","Singh","HS","PASS",8392);
		userService.delete(1);
		verify(userRepository,times(1)).deleteById(1);
	}
	
	/**
	 * test to get all vehicles from database
	 */
	@Test
	public void getVehiclesTest() {
		when(vehicleRepo.findAll()).thenReturn(Stream.of(new Vehicle(1,"Car","Red 4 Seter Sedan",45,66),new Vehicle(2,"Truck","Mahindra",456,665)).collect(Collectors.toList()));
		
		assertEquals(2,vehicleService.allVehicles().size());
	}
	/*
	@Test
	public void getVehicleById() {
		Vehicle vehicle = new Vehicle(1,"Car","Red 4 Seter Sedan",45,66)
		when(userRepository.findById(1)).thenReturn(vehicle);
		
		assertEquals(user,userService.findUserByUname(uname));
	}
	*/
	
	/**
	 * Test to save Users in database
	 */
	@Test
	public void saveVehicleTest() {
		Vehicle vehicle = new Vehicle(1,"Car","Red 4 Seter Sedan",45,66);
		when(vehicleRepo.save(vehicle)).thenReturn(vehicle);
		
		assertEquals(vehicle,vehicleService.insert(vehicle));
	}
	
	/**
	 * Test to delete users from database
	 */
	@Test
	public void deleteVehicleTest() {
		Vehicle vehicle = new Vehicle(1,"Car","Red 4 Seter Sedan",45,66);
		userService.delete(1);
		verify(userRepository,times(1)).deleteById(1);
	}
}
