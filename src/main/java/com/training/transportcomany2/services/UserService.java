package com.training.transportcomany2.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.training.transportcomany2.model.User;
import com.training.transportcomany2.repos.UserRepo;

/**
 * 
 * @author Hritik
 * Service for User Database
 */
@Service
public class UserService {
	@Autowired
	UserRepo userRepo;
	public User insert(User user) {
		
		return userRepo.save(user);
	}
	public List<User> allUsers(){
		return userRepo.findAll();
	}
	
	public Optional<User> findUser(int id){
		return userRepo.findById(id);
	}
	
	public void delete(int id) {
		userRepo.deleteById(id);
	}
	
	public User findUserByUname(String uname) {
		return userRepo.findByUname(uname);
	}
	
	public boolean existsUserByUname(String uname) {
		return userRepo.existsByUname(uname);
}
}
