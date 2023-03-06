package com.bit.web.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.web.vo.AjaxMemberBean;
import com.bit.web.vo.AjaxReplyBoardBean;

@Repository
public class AjaxDao extends SqlSessionDaoSupport{
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}	
	public List<Object>selectEmp(){
		return this.getSqlSession().selectList("selectEmp");
	}
	public List<Object>selectStudent(){
		return this.getSqlSession().selectList("selectStudent");
	}
	public void ajaxMemberInsert(HashMap<String, Object> map){
		this.getSqlSession().insert("insertAjaxMember", map);
	}
	
	public int getAjaxSequence() {
		return this.getSqlSession().selectOne("ajaxSequence");
	}
	
	public List<Integer> selectEmpSal() {
		return this.getSqlSession().selectList("selectEmpSal");
	}
	
	public List<Object> selectGroupEmp(){
		return this.getSqlSession().selectList("selectGroupEmp");
	}
	
	public List<Object> selectAvgGroup(){
		return this.getSqlSession().selectList("selectAvgGroup");
	}
	
	public void mvcboardReplyInsert(HashMap<String, Object>map) {
		this.getSqlSession().insert("insertAjaxReply", map);
	}
	
	public Integer selectSeqNumber() {
		return this.getSqlSession().selectOne("selectSeqNumber");
	}
	
	public void ajaxReplyInsert(AjaxReplyBoardBean board) {
		this.getSqlSession().insert("insertAjaxReply",board);
	}
	

}
