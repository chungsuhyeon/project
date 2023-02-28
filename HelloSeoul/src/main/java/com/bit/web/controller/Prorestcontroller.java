package com.bit.web.controller;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bit.web.dao.LocationBean;
import com.bit.web.dao.ProjDao;

@RestController
public class Prorestcontroller {
	@Resource
	private ProjDao dao;
	
	@PostMapping(value = "testing")
	public LocationBean resttesting() {
		return dao.selecloc();
	}

}
