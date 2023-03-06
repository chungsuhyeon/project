package com.bit.web.dao;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.web.vo.ComBoard;
import com.mongodb.util.Hash;

@Repository
public class ProjectDao extends SqlSessionDaoSupport{
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}	
	public void boardInsert(ComBoard board) {
		this.getSqlSession().insert("boardInsert",board);
	}
	public Integer selectBoradNo() {
		return this.getSqlSession().selectOne("selectBoradNo");
	}
	public List<Object> selectBoard(){
		return this.getSqlSession().selectList("selectBoard");
	}
	public List<Object> selectInfoBoard(int no){
		return this.getSqlSession().selectList("selectInfoBoard",no);
	}
	public Integer hitAction(int no) {
		return this.getSqlSession().selectOne("hitAction",no);
	}
	public List<Object> replyInsert(){
		return this.getSqlSession().selectList("replyInsert");
	}
	public Integer replyBoardNo() {
		return this.getSqlSession().selectOne("replyBoardNo");
	}
	public String deleteBoard(int no) {
		return this.getSqlSession().selectOne("deleteBoard",no);
	}
	public String modifyAction(int no) {
		return this.getSqlSession().selectOne("modifyAction",no);
	}
	public List<Object> updateBoard(ComBoard board) {
		return this.getSqlSession().selectList("updateBoard",board);
	}
}









