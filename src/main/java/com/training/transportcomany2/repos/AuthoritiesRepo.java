package com.training.transportcomany2.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.training.transportcomany2.model.Authorities;

/**
 * 
 * @author Hritik
 * 
 *	Repoaitory for Authorities Table
 */
public interface AuthoritiesRepo extends JpaRepository<Authorities,Integer>{
	Authorities findByUser_id(int id);
}
