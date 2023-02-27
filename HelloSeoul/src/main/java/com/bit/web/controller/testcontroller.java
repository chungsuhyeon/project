package com.bit.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testcontroller {
	
	@RequestMapping(value = "ttit")
	public void testingp() {
		System.out.println("success");
	}

}
