package com.bit.web.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.bit.web.vo.EmojiBean;
import com.bit.web.vo.ReplyBoard;
import com.bit.web.vo.boardMemberBean;
import com.bit.web.vo.postBoardBean;

@Repository
public class boardMemberDao extends SqlSessionDaoSupport {
	
	@Inject
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	public String ajaxGetBoardId(String id) {
		return this.getSqlSession().selectOne("ajaxGetBoardId", id);
	}
	
	public void insertBoardMember(boardMemberBean bean) {
		this.getSqlSession().insert("insertBoardMember", bean);
	}
	
	public void insertEmojiInfo(EmojiBean bean) {
		this.getSqlSession().insert("insertEmojiBean", bean);
	}
	
	public String getInfoNo(int no) {
		return this.getSqlSession().selectOne("getInfoNo", no);
	}
	
	public String getEmojiId(String id) {
		return this.getSqlSession().selectOne("getEmojiId", id);
	}
	
	public Integer getSequence(){
		return this.getSqlSession().selectOne("getSequenceBoardMember");
	}
	
	public String getPassword(String id) {
		return this.getSqlSession().selectOne("getPassword", id);
	}
	
	public Integer postSequence() {
		return this.getSqlSession().selectOne("getPostSequence");
	}
	
	public void updateReply(HashMap<String, Object>map) {
		this.getSqlSession().update("updateReply",map);
	}
	
	public void updateStep(HashMap<String, Object>map) {
		this.getSqlSession().update("updateStep",map);
	}
	
	public void insertPostBoard(postBoardBean bean) {
		this.getSqlSession().insert("insertPostBoard", bean);
	}
	
	public List<postBoardBean>selectPostList(HashMap<String, Object>map){
		return this.getSqlSession().selectList("selectPostList", map);
	}
	
	public void updateHit(int no) {
		this.getSqlSession().update("sist.spring.dao.boardMemberDao.updateHit", no);
	}
	
	public Object selectPostInfo(int no) {
		return this.getSqlSession().selectOne("selectPostInfo", no);
	}
	
	public void deletePost(int no) {
		this.getSqlSession().delete("deletePost", no);
	}
	
		
}
