package com.bit.web.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.web.vo.ComBoard;
import com.bit.web.vo.ReplyBoard;
import com.bit.web.vo.goodbadBoard;
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
	public void replyInsert(ReplyBoard reboard){
		this.getSqlSession().insert("replyInsert",reboard);
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
	public String selectId(String id) {
		return this.getSqlSession().selectOne("selectId",id);
	}
	public String selectBoardId(int no) {
		return this.getSqlSession().selectOne("selectBoardId",no);
	}
	public String selectNick(String id) {
		return this.getSqlSession().selectOne("selectNick",id);
	}
	public List<Object> selectReply(int no) {
		return this.getSqlSession().selectList("selectReply",no);
	}
	public String deleteReply(int no) {
		return this.getSqlSession().selectOne("deleteReply",no);
	}
	public String replyUpdate(int no) {
		return this.getSqlSession().selectOne("replyUpdate",no);
	}
	public String deleteReplymain(int no) {
		return this.getSqlSession().selectOne("deleteReplymain",no);
	}
	public String updateMinusReply(int no) {
		return this.getSqlSession().selectOne("updateMinusReply",no);
	}
	public String selectReplyid(int no) {
		return this.getSqlSession().selectOne("selectReplyid",no);
	}
	public String goodAction(goodbadBoard board) {
		return this.getSqlSession().selectOne("goodAction",board);
	}
	public String goodBoard(int com_no) {
		return this.getSqlSession().selectOne("goodBoard",com_no);
	}
	public String goodBoardMi(int com_no) {
		return this.getSqlSession().selectOne("goodBoardMi",com_no);
	}
	public Integer selectGood(int com_no) {
		return this.getSqlSession().selectOne("selectGood",com_no);
	}
	public Integer goodbadSelectGood(HashMap<String, Object>map) {
		return this.getSqlSession().selectOne("goodbadSelectGood",map);
	}
	public String goodbadDelete(HashMap<String, Object>map) {
		return this.getSqlSession().selectOne("goodbadDelete",map);
	}
	
}









