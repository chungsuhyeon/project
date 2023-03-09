package com.bit.web.vo;

public class JoinSeoulBean {
	  
	   private String user_id;
	   private String user_nick;
	   private String user_pw;
	   private String user_name;
	   private String user_nation;
	   private String user_tel;
	   private String user_birth;
       private int user_gender;
       private int user_pp;	
       private int user_first;
       
       
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_nick() {
		return user_nick;
	}
	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_nation() {
		return user_nation;
	}
	public void setUser_nation(String user_nation) {
		this.user_nation = user_nation;
	}
	public String getUser_tel() {
		return user_tel;
	}
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}
	public String getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}
	public int getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(int user_gender) {
		this.user_gender = user_gender;
	}
	public int getUser_pp() {
		return user_pp;
	}
	public void setUser_pp(int user_pp) {
		this.user_pp = user_pp;
	}
	public int getUser_first() {
		return user_first;
	}
	public void setUser_first(int user_first) {
		this.user_first = user_first;
	}
	
	@Override
	public String toString() {
		return "JoinSeoulBean [user_id=" + user_id + ", user_nick=" + user_nick + ", user_pw=" + user_pw
				+ ", user_name=" + user_name + ", user_nation=" + user_nation + ", user_tel=" + user_tel
				+ ", user_birth=" + user_birth + ", user_gender=" + user_gender + ", user_pp=" + user_pp
				+ ", user_first=" + user_first + "]";
	}
 
       
       
       
       
       
}

