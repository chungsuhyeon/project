package com.bit.web.dao;

import java.util.HashMap;

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
	
	public HashMap<String, String> getDbUser(String id) {
		return this.getSqlSession().selectOne("getDbUser", id);
	}
	
	public HashMap<String, Object> getUserInfo(Object id){
		return this.getSqlSession().selectOne("getUserInfo", id);		
	}
	
	
}
