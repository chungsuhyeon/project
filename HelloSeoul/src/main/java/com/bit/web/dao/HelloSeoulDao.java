package com.bit.web.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository(value = "helloSeoulDao")
public class HelloSeoulDao extends SqlSessionDaoSupport{
	@Inject
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionRactory) {
		super.setSqlSessionFactory(sqlSessionRactory);
	}
	
	public String getDbPass(String id) {
		return this.getSqlSession().selectOne("getDbPass", id);
	}
	
	public String getNickname(String id) {
		return this.getSqlSession().selectOne("getNickname", id);
	}
	
	
}
