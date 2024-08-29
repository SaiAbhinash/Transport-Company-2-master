package com.training.transportcomany2.exceptionsHandlers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import com.training.transportcomany2.controllers.AdminController;

;

/*
@RestControllerAdvice
public class EntityNotFoundException {
	Logger logger = LoggerFactory.getLogger(AdminController.class);
	@ExceptionHandler(value=EmptyResultDataAccessException.class)
	public ResponseEntity<String> handleInvalidCreditional(EmptyResultDataAccessException exceptionDetails) {
		logger.trace("Exception Details",exceptionDetails.getMostSpecificCause());
		String exception = exceptionDetails.getLocalizedMessage();
		return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(
				"NO "+exception.substring(45)
				);
	}

}
*/

@ControllerAdvice
public class EntityNotFoundException {
	Logger logger = LoggerFactory.getLogger(AdminController.class);
	@ExceptionHandler(value=EmptyResultDataAccessException.class)
	public String handleInvalidCreditional(Model m,EmptyResultDataAccessException exceptionDetails) {
		logger.trace("Exception Details",exceptionDetails.getMostSpecificCause());
		String exception = exceptionDetails.getLocalizedMessage().substring(45);
		m.addAttribute("msg", "NO "+exception);
		return "error-page";
	}

}