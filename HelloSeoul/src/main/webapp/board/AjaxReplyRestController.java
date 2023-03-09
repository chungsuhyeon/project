package com.bit.web.controller;

import javax.annotation.Resource;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bit.web.dao.AjaxDao;
import com.bit.web.vo.AjaxReplyBoardBean;

@RestController
public class AjaxReplyRestController {
	
	@Resource(name="ajaxDao")
	private AjaxDao dao;
	
	@PostMapping(value = "ajaxReplyCrud")
	public String ajaxCrudReplyAction(AjaxReplyBoardBean bean) {
		bean.setNo(dao.selectSeqNumber());
		if(bean.getJob().equals("new")) {
			bean.setRef(bean.getNo());
			bean.setPnum(bean.getNo());
		}
		bean.setFilename("nofile");
		System.out.println(bean);
		dao.ajaxReplyInsert(bean);
		return "ajaxCrudReplyAction";
	}
	
}
