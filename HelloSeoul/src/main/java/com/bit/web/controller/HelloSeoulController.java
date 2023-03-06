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

	// 로그인
	@RequestMapping("siteCheck")
	public String loginProcess(HttpServletRequest request, String user_id, String password) {
		HashMap<String, String> userInfo = helloDao.getDbUser(user_id);
//		System.out.println("HelloSeoulController getDbUser ; " + userInfo);
		
		String dbPass = userInfo.get("USER_PW");
		String nickName = userInfo.get("USER_NICK");
				
		if(dbPass!=null && dbPass.equals(password)) {
			// 세션에 아이디, 닉네임 저장하기 & 한시간 유지			
			request.getSession().setAttribute("user_id", user_id);
			request.getSession().setAttribute("user_nickName", nickName);
			request.getSession().setMaxInactiveInterval(60*60);
			return "redirect:/pages/MainPage.jsp";
		} else {
			return "redirect:/pages/plogin.jsp";
		}
	}
	
	// 로그아웃
	@RequestMapping("HelloSeoulLogout")
	public ModelAndView BoardLogout(HttpServletRequest request) {
		request.getSession().setAttribute("user_id", null);
		request.getSession().setMaxInactiveInterval(0);		
		return new ModelAndView("pages/MainPage");
	}
	
	// 마이페이지 메인화면으로
	@RequestMapping("myPageLoad")
	public ModelAndView userInfoAll(HttpServletRequest request, Model model) {
		// 개인정보 넘기기		
		HashMap<String, Object> userDBInfo = helloDao.getUserInfo(request.getSession().getAttribute("user_id"));
//		System.out.println("HelloSeoulController userInfoAll ; " + userDBInfo);
		
		// DB의 생년월일 날짜형으로 타입변경
		LocalDate birth = LocalDate.parse((String)userDBInfo.get("USER_BIRTH"), DateTimeFormatter.ofPattern("yyyy/MM/dd"));
		
		// 오늘 날짜 받아오기
		LocalDate today = LocalDate.now();
		
		
		int user_pp = Integer.parseInt(String.valueOf(userDBInfo.get("USER_PP")));
		int user_first = Integer.parseInt(String.valueOf(userDBInfo.get("USER_FIRST")));
		
		// page에 넘길 map
		HashMap<String, Object> userInfo = new HashMap<String, Object>();	
		userInfo.put("USER_NAME", userDBInfo.get("USER_NAME")); // 이름
		userInfo.put("USER_NATION", userDBInfo.get("USER_NATION")); // 국적
		
		// 만 나이 계산
		if( (today.getMonthValue() - birth.getMonthValue()) > 0) { // 생일이 지남
			userInfo.put("USER_AGE", today.getYear() - birth.getYear());	
		} else { // 생일 안지남
			if(birth.getDayOfMonth() > today.getDayOfMonth()) { // 생일 안지남
				userInfo.put("USER_AGE", today.getYear() - birth.getYear() - 1);						
			} else { // 생일 지남
				userInfo.put("USER_AGE", today.getYear() - birth.getYear());				
			}
		}
						
		// 관광목적
		switch (user_pp) {
		case 1:
			userInfo.put("USER_PP", "travel"); // 여행
			break;
		case 2:
			userInfo.put("USER_PP", "business trip"); // 출장
			break;
		case 3:
			userInfo.put("USER_PP", "study"); // 학업
			break;
		case 4:
			userInfo.put("USER_PP", "experience"); // 체험
			break;
		default : 
			userInfo.put("USER_PP", "Not selected");
			break;
		}
		
		// 관광 우선순위
		switch (user_first) {
		case 1:
			userInfo.put("USER_FIRST", "food"); // 음식
			break;
		case 2:
			userInfo.put("USER_FIRST", "cultural experience"); // 문화체험
			break;
		case 3:
			userInfo.put("USER_FIRST", "shopping"); // 쇼핑
			break;
		case 4:
			userInfo.put("USER_FIRST", "history tour"); // 역사탐방
			break;
		default : 
			userInfo.put("USER_PP", "Not selected");
			break;
		}
		
		model.addAttribute("userInfo", userInfo);
		
//		System.out.println("HelloSeoulController userInfoAll userInfo ; " + userInfo);
		
		return new ModelAndView("pages/MyPageMain");
	}
	
	// 찜 보기 화면
	@PostMapping(value = "ajaxMypageJjim")
	@ResponseBody
	public List<Object> mypageJjimListLoad(@RequestParam(value = "user_id")String user_id){
		System.out.println("HelloSeoulController mypageJjimListLoad user_id " + user_id);
		List<Object> userJjimList = helloDao.getUserJjimList(user_id);
		System.out.println("HelloSeoulController mypageJjimListLoad userJjimList " + userJjimList);
		
		return userJjimList;
	}

	
}
