package com.training.transportcomany2.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.training.transportcomany2.model.Authorities;
import com.training.transportcomany2.repos.AuthoritiesRepo;

@Service
public class AuthorityService{
	@Autowired
	AuthoritiesRepo authRepo;
	
	public Authorities findAuthority(int id) {
		return authRepo.findByUser_id(id);
	}
}
