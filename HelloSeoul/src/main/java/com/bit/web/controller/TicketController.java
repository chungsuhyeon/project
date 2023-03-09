package com.bit.web.controller;

import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.support.DaoSupport;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bit.web.dao.TicketDao;
import com.bit.web.vo.MusicalBean;

@Controller
public class TicketController {
	
	@Autowired
	private TicketDao dao;
	private MusicalBean bean;

	@RequestMapping (value = "contentImg")
	public String ImgCheck(String imgsrc,Model model) {
//		System.out.println("contentImg");
//		System.out.println(imgsrc);
		model.addAttribute("musicalinfo", dao.selectMusicalInfo(imgsrc));
		System.out.println(model);
		return "Final_Pro/TicketDetail";
	}
	
	@RequestMapping (value = "MusicalList")
	public String musicallist(Model model) {
		System.out.println("test");
		HashMap<String, Object>map= new HashMap<String, Object>();
		model.addAttribute("musicallist", dao.selectMusicalList(map));
		HashMap<String, Object>map2 = new HashMap<String, Object>();
		model.addAttribute("musicallist2", dao.selectMusicalList2(map2));
		HashMap<String, Object>map3 = new HashMap<String, Object>();
		model.addAttribute("musicallist3", dao.selectMusicalList3(map3));
		HashMap<String, Object>map4 = new HashMap<String, Object>();
		model.addAttribute("musicallist4", dao.selectMusicalList4(map4));
		HashMap<String, Object>map5 = new HashMap<String, Object>();
		model.addAttribute("musicallist5", dao.selectMusicalList5(map5));
		return "Final_Pro/Musicalmain";
	}
	
}
