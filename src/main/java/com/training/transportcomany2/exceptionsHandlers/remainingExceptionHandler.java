package com.training.transportcomany2.exceptionsHandlers;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class remainingExceptionHandler {
	@ExceptionHandler(value=Exception.class)
	public String handleInvalidCreditional(Model m,Exception exceptionDetails) {
		String exception = exceptionDetails.getLocalizedMessage().substring(45);
		m.addAttribute("msg", "NO "+exception);
		return "error-page";
	}
}
