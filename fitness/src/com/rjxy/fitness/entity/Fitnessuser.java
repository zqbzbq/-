package com.rjxy.fitness.entity;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Fitnessuser {
    private String userid;

    private String password;

    private String nickname;

    private String sex;

    private Integer age;

    private String profilehead;

    private String profile;

    private Date firsttime;

    private Integer checktype;

    private Date lasttime;

    private Integer status;

	private String id;
	
	private String orderclass;
	
	private MultipartFile file;
	
	private Integer ltype;
	
    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid == null ? null : userid.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname == null ? null : nickname.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getprofilehead() {
        return profilehead;
    }

    public void setprofilehead(String profilehead) {
        this.profilehead = profilehead == null ? null : profilehead.trim();
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile == null ? null : profile.trim();
    }

    public Date getFirsttime() {
        return firsttime;
    }

    public void setFirsttime(Date firsttime) {
        this.firsttime = firsttime;
    }

    public Integer getChecktype() {
        return checktype;
    }

    public void setChecktype(Integer checktype) {
        this.checktype = checktype;
    }

    public Date getLasttime() {
        return lasttime;
    }

    public void setLasttime(Date lasttime) {
        this.lasttime = lasttime;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

	public String getId() {
		
		return id;
	}

	public void setId(String id) {
		
		this.id = id == null ? null : id.trim();
	}

	public String getOrderclass() {
		return orderclass;
	}

	public void setOrderclass(String orderclass) {
		this.orderclass = orderclass == null ? null : orderclass.trim();
	}

	@Override
	public String toString() {
		return "Fitnessuser [profilehead=" + profilehead + "]";
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public Integer getLtype() {
		return ltype;
	}

	public void setLtype(Integer ltype) {
		this.ltype = ltype;
	}

	
}