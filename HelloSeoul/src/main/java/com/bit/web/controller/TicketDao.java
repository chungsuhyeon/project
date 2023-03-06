package com.bit.web.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class TicketDao extends SqlSessionDaoSupport{
	
	public void setSqlSessioinFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public List<MusicalBean> selectMusicalList(HashMap<String, Object>map){
		return this.getSqlSession().selectList("selectMusicalList", map);
	}
	
	public Integer selectSeqNumber() {
		return this.getSqlSession().selectOne("selectSeqNumber");
	}

}
