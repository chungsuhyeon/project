package com.bit.web.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.bit.web.vo.JoinSeoulBean;

@Repository
public class JoinSeoulDao extends SqlSessionDaoSupport {
	@Inject
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public String ajaxGetId(String id) {
		return this.getSqlSession().selectOne("ajaxGetId",id);
	}
	
	public void insertMember(JoinSeoulBean bean) {
		this.getSqlSession().insert("insertMember",bean);
	}	
		
}	
		
		
		
		
		
		
	
	
	
