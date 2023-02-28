package com.bit.web.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class ProjDao extends SqlSessionDaoSupport{
	
	@Inject
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public LocationBean selecloc() {
		return this.getSqlSession().selectOne("testing01");
	}
	
	public void inserting() {
		this.getSqlSession().insert("inserting");
	}

}
