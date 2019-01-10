package com.rjxy.fitness.entity;

import java.util.Date;

public class Opinion {
	 private String id;
	 
	 private String userid;
	 
	 private String username;
	 
	 private String tel;
	 
	 private String content;
	 
	 private Date createdate;
	 
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id == null ? null : id.trim();
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid == null ? null : userid.trim();
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel == null ? null : tel.trim();
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content == null ? null : content.trim();
	}
	public Date getCreatedate() {
		return createdate;
	}
	public void setCreatedate(Date createdate) {
		this.createdate = createdate ;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username== null ? null :username.trim();
	}
	 
}
