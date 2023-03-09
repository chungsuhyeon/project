package com.bit.web.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.bit.web.vo.MusicalBean;

@Repository
public class TicketDao extends SqlSessionDaoSupport{
	
	@Inject
	public void setSqlSessioinFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public List<MusicalBean> selectMusicalList(HashMap<String, Object>map){
		return this.getSqlSession().selectList("selectMusicalList", map);
	}
	
	public List<MusicalBean> selectMusicalList2(HashMap<String, Object>map2){
		return this.getSqlSession().selectList("selectMusicalList2", map2);
	}
	
	public List<MusicalBean> selectMusicalList3(HashMap<String, Object>map3){
		return this.getSqlSession().selectList("selectMusicalList3", map3);
	}
	
	public List<MusicalBean> selectMusicalList4(HashMap<String, Object>map4){
		return this.getSqlSession().selectList("selectMusicalList4", map4);
	}
	
	public List<MusicalBean> selectMusicalList5(HashMap<String, Object>map5){
		return this.getSqlSession().selectList("selectMusicalList5", map5);
	}
	
	public Object selectMusicalInfo(String imgsrc) {
		return this.getSqlSession().selectOne("selectMusicalInfo", imgsrc);
	}
	
	public Integer selectSeqNumber() {
		return this.getSqlSession().selectOne("selectSeqNumber");
	}

}
