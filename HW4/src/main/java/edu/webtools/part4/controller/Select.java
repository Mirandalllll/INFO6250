package edu.webtools.part4.controller;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Select extends AbstractController {
    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String option = request.getParameter("option");
        ModelAndView modelAndView = null;
        if(option.equals("Add")){
            modelAndView = new ModelAndView("part4/addMovie");
        }else{
            modelAndView = new ModelAndView("part4/browseMovie");
        }
        return modelAndView;
    }
}
