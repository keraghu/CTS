package com.cts.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloWorldController {

	String message = "Welcome to Spring MVC!";


/*	 @RequestMapping(value = "/", method = RequestMethod.GET)
	    public String root() {
	        return "index";
	    }*/


	@RequestMapping(value="/hello",method = RequestMethod.POST)
	public ModelAndView showMessage() {
		System.out.println("in controller");

		ModelAndView mv = new ModelAndView("hello");
		mv.addObject("message", message);
		//mv.addObject("name", name);
		return mv;
		//return "home";
	}

	@RequestMapping("/request_train")
	   public ModelAndView showContacts() {

		ModelAndView mv = new ModelAndView("request_train");
	        return mv;
	    }

}