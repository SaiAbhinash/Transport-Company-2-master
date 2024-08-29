package com.training.transportcomany2.exceptionsHandlers;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

@ControllerAdvice
public class CustomAccessDeniedExceptionHandler extends ResponseEntityExceptionHandler {

    @ExceptionHandler(AccessDeniedException.class)
    public final String handleAccessDeniedException(Model model, AccessDeniedException ex, WebRequest request) {
        model.addAttribute("msg",ex.getMessage());
        return "error-page";
    }

}