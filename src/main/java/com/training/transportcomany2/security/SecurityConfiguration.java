package com.training.transportcomany2.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.training.transportcomany2.exceptionsHandlers.CustomAccessDeniedHandler;

@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter{
	@Autowired 
	PasswordEncoder passwordEncoder;
	@Autowired
	UserDetailsService userDetailsService;
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		// TODO Auto-generated method stub
		auth.userDetailsService(userDetailsService);
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		// TODO Auto-generated method stub
		http.csrf().disable().authorizeRequests()
			.antMatchers("/admin/**").hasRole("ADMIN")
			//.antMatchers("/user/**").hasAnyRole("ADMIN","USER")
			.antMatchers("/manager/**").hasAnyRole("ADMIN","MANAGER")
			.antMatchers("/").permitAll()
			//.antMatchers("/").permitAll()
				
				  .antMatchers("/user/bookings").hasRole("USER")
				  
				  .antMatchers("/user/register").hasRole("USER")
				  .antMatchers("/user/all").hasRole("USER")
				  .antMatchers("/user/bookings").hasRole("USER")
				 
			//.antMatchers("/user/save").permitAll()
			.and().formLogin()
			.loginPage("/login").permitAll().successHandler(myAuthenticationSuccessHandler())
			
			.and()
			.exceptionHandling()
			.accessDeniedHandler(accessDeniedHandler());
	}
	/*
	@Bean
	public PasswordEncoder getPasswordEncoder() {
		return NoOpPasswordEncoder.getInstance();
	}
	*/
	
	@Bean
	public AccessDeniedHandler accessDeniedHandler() {
	   return new CustomAccessDeniedHandler();
	}
	
	@Bean
	public AuthenticationSuccessHandler myAuthenticationSuccessHandler(){
	    return new MySimpleUrlAuthenticationSuccessHandler();
	}
}
