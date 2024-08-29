package com.training.transportcomany2.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import com.training.transportcomany2.model.User;

/**
 * 
 * @author Hritik
 * 
 * Repository For User Table
 *
 */
public interface UserRepo extends JpaRepository<User, Integer> {
	User findByUname(String name);
	public boolean existsByUname(String uname);
}
