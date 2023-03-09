package com.bit.web.controller;

import java.util.HashMap;
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
	
	@PostMapping(value = "searchFood")
	public List<MainDbBean> searchFood(String loc_sg, String loc_ctg2, String query) {
		HashMap<Object, String> map = new HashMap<Object, String>();
		map.put("loc_sg", loc_sg);
		map.put("loc_ctg2", loc_ctg2);
		map.put("query", query);		
		System.out.println(map);
		System.out.println(dao.searchFood(map));
		return dao.searchFood(map);
	}

}
