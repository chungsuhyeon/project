package com.bit.web.controller;

import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.dao.support.DaoSupport;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TicketController {
	
	@Resource(name="TicketDao")
	private TicketDao dao;

	@RequestMapping (value = "contentImg")
	public void ImgCheck(String imgsrc) {
		System.out.println(imgsrc);
	}
	
	@RequestMapping (value = "MusicalList")
	public String musicallist(Model model) {
		System.out.println("test");
		HashMap<String, Object>map = new HashMap<String, Object>();
		model.addAttribute("musicallist", dao.selectMusicalList(map));
		return "pages/Musicalmain";
	}
	
}
