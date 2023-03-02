package com.bit.web.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bit.web.dao.HelloSeoulDao;

@Controller
public class HelloSeoulController {
	@Resource(name = "helloSeoulDao")
	private HelloSeoulDao helloDao;

	
	@RequestMapping("siteCheck")
	public String loginProcess(HttpServletRequest request, String user_id, String password) {
		String dbPass = helloDao.getDbPass(user_id);
		
		if(dbPass!=null&&dbPass.equals(password)) {
			request.getSession().setAttribute("user_id", user_id);
			request.getSession().setMaxInactiveInterval(60*60);
			return "redirect:/pages/MainPage.jsp";
		} else {
			return "redirect:/pages/plogin.jsp";
		}
	}
	
	@RequestMapping("loginCheck")
	public String loginCheck(HttpServletRequest request) {
		System.out.println("HelloSeoulController user_id check : " + request.getSession().getAttribute("user_id"));
		String user_id = (String)request.getSession().getAttribute("user_id");
		
		if(user_id == null) {
			return "redirect:/pages/plogin.jsp";
		} else {
			String nick = helloDao.getNickname(user_id);
			request.getSession().setAttribute("NickName", nick);
			return "redirect:/pages/MyPageMain.jsp";			
		}
	}
	
}
