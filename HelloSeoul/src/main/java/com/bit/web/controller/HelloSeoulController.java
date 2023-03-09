package com.bit.web.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.joda.time.format.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bit.web.dao.HelloSeoulDao;

@Controller
public class HelloSeoulController {
	@Resource(name = "helloSeoulDao")
	private HelloSeoulDao helloDao;

	// 濡쒓렇�씤
	@RequestMapping("siteCheck")
	public String loginProcess(HttpServletRequest request, String user_id, String password) {
		HashMap<String, String> userInfo = helloDao.getDbUser(user_id);
//		System.out.println("HelloSeoulController getDbUser ; " + userInfo);
		
		String dbPass = userInfo.get("USER_PW");
		String nickName = userInfo.get("USER_NICK");
				
		if(dbPass!=null && dbPass.equals(password)) {
			// �꽭�뀡�뿉 �븘�씠�뵒, �땳�꽕�엫 ���옣�븯湲� & �븳�떆媛� �쑀吏�			
			request.getSession().setAttribute("user_id", user_id);
			request.getSession().setAttribute("user_nickName", nickName);
			request.getSession().setMaxInactiveInterval(60*60);
			return "redirect:/Final_Pro/index.jsp";
		} else {
			return "redirect:/Final_Pro/login.jsp";
		}
	}
	
	// 濡쒓렇�븘�썐
	@RequestMapping("HelloSeoulLogout")
	public ModelAndView BoardLogout(HttpServletRequest request) {
		request.getSession().setAttribute("user_id", null);
		request.getSession().setMaxInactiveInterval(0);		
		return new ModelAndView("Final_Pro/index");
	}
	
	// 留덉씠�럹�씠吏� 硫붿씤�솕硫댁쑝濡�
	@RequestMapping("myPageLoad")
	public ModelAndView userInfoAll(HttpServletRequest request, Model model) {
		// 媛쒖씤�젙蹂� �꽆湲곌린		
		HashMap<String, Object> userDBInfo = helloDao.getUserInfo(request.getSession().getAttribute("user_id"));
//		System.out.println("HelloSeoulController userInfoAll ; " + userDBInfo);
		
		// DB�쓽 �깮�뀈�썡�씪 �궇吏쒗삎�쑝濡� ���엯蹂�寃�
		LocalDate birth = LocalDate.parse((String)userDBInfo.get("USER_BIRTH"), DateTimeFormatter.ofPattern("yy/MM/dd"));
		
		// �삤�뒛 �궇吏� 諛쏆븘�삤湲�
		LocalDate today = LocalDate.now();
		
		
		int user_pp = Integer.parseInt(String.valueOf(userDBInfo.get("USER_PP")));
		int user_first = Integer.parseInt(String.valueOf(userDBInfo.get("USER_FIRST")));
		
		// page�뿉 �꽆湲� map
		HashMap<String, Object> userInfo = new HashMap<String, Object>();	
		userInfo.put("USER_NAME", userDBInfo.get("USER_NAME")); // �씠由�
		userInfo.put("USER_NATION", userDBInfo.get("USER_NATION")); // 援��쟻
		
		// 留� �굹�씠 怨꾩궛
		if( (today.getMonthValue() - birth.getMonthValue()) > 0) { // �깮�씪�씠 吏��궓
			userInfo.put("USER_AGE", today.getYear() - birth.getYear());	
		} else { // �깮�씪 �븞吏��궓
			if(birth.getDayOfMonth() > today.getDayOfMonth()) { // �깮�씪 �븞吏��궓
				userInfo.put("USER_AGE", today.getYear() - birth.getYear() - 1);						
			} else { // �깮�씪 吏��궓
				userInfo.put("USER_AGE", today.getYear() - birth.getYear());				
			}
		}
						
		// 愿�愿묐ぉ�쟻
		switch (user_pp) {
		case 1:
			userInfo.put("USER_PP", "travel"); // �뿬�뻾
			break;
		case 2:
			userInfo.put("USER_PP", "business trip"); // 異쒖옣
			break;
		case 3:
			userInfo.put("USER_PP", "study"); // �븰�뾽
			break;
		case 4:
			userInfo.put("USER_PP", "experience"); // 泥댄뿕
			break;
		default : 
			userInfo.put("USER_PP", "Not selected");
			break;
		}
		
		// 愿�愿� �슦�꽑�닚�쐞
		switch (user_first) {
		case 1:
			userInfo.put("USER_FIRST", "food"); // �쓬�떇
			break;
		case 2:
			userInfo.put("USER_FIRST", "cultural experience"); // 臾명솕泥댄뿕
			break;
		case 3:
			userInfo.put("USER_FIRST", "shopping"); // �눥�븨
			break;
		case 4:
			userInfo.put("USER_FIRST", "history tour"); // �뿭�궗�깘諛�
			break;
		default : 
			userInfo.put("USER_PP", "Not selected");
			break;
		}
		
		model.addAttribute("userInfo", userInfo);
		
//		System.out.println("HelloSeoulController userInfoAll userInfo ; " + userInfo);
		
		return new ModelAndView("Final_Pro/myPageMain");
	}
	
	// 李� 蹂닿린 �솕硫�
	@PostMapping(value = "ajaxMypageJjim")
	@ResponseBody
	public List<Object> mypageJjimListLoad(@RequestParam(value = "user_id")String user_id){
		List<Object> userJjimList = helloDao.getUserJjimList(user_id);
		System.out.println("HelloSeoulController mypageJjimListLoad userJjimList " + userJjimList);
		return userJjimList;
	}

	
}
