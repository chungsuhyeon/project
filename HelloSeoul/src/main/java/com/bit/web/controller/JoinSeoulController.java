package com.bit.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.web.dao.JoinSeoulDao;
import com.bit.web.vo.JoinSeoulBean;

@Controller
public class JoinSeoulController {
	@Autowired
	private JoinSeoulDao dao;
	
	@PostMapping(value = "")
	@ResponseBody
	public String findId(@RequestParam(value = "id", required = false, defaultValue = "blue@bit.com")String id) {
		//System.out.println(id);
		//return "ok";
		return dao.ajaxGetId(id) != null ? String.valueOf(true) : String.valueOf(false);
		//return "test";
	}
	
	@PostMapping(value = "joinMemberInsert")
	public String joinMemberInsert(JoinSeoulBean bean) {
		System.out.println("test");
		//bean.setNo(dao.getJoinSeoulSequence());
//		dao.insertMember(bean);
		System.out.println(bean);
		return "";
		
		
	}
	
	

}
