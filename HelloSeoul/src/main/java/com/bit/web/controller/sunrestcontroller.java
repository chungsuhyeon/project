package com.bit.web.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bit.web.dao.CtgDao;
import com.bit.web.vo.MainDbBean;

@RestController
public class sunrestcontroller {
	
	@Resource
	private CtgDao dao;
	
	@PostMapping(value = "showMainDb")	
	public List<MainDbBean> showDb() {
		
		return dao.showDb();
	}
	

}
