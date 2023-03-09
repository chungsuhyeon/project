package com.bit.web.dao;

import java.util.HashMap;
import java.util.List;

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
	
	// 회원정보 (로그인)
	public HashMap<String, String> getDbUser(String id) {
		return this.getSqlSession().selectOne("getDbUser", id);
	}
	
	// 회원정보 (마이페이지 메인에 회원정보 출력하기 위함)
	public HashMap<String, Object> getUserInfo(String id){
		return this.getSqlSession().selectOne("getUserInfo", id);		
	}
	
	// 회원의 찜 리스트 검색
	public List<Object> getUserJjimList(String id){
		return this.getSqlSession().selectList("getUserJjimList", id);
	}
	
	// 회원의 찜 리스트 삭제
	public void userJjimListDelete(HashMap<String, String> list) {
		this.getSqlSession().delete("userJjimListDelete", list);
	}
	
	
}
