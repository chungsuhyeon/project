package com.bit.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TicketController {

	@RequestMapping (value = "contentImg")
	public void ImgCheck() {
		System.out.println("test");
	}
	
}