package com.training.transportcomany2.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.training.transportcomany2.model.Authorities;
import com.training.transportcomany2.model.MyUserDetails;
import com.training.transportcomany2.model.User;

@Service
public class MyUserDetailsService implements UserDetailsService {
	@Autowired
	UserService userService;
	@Autowired
	AuthorityService authService;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		User user = userService.findUserByUname(username);
		Authorities authority = authService.findAuthority(user.getId());
		return new MyUserDetails(user,authority);
	}

}
