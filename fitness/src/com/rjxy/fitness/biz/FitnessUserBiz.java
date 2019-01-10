package com.rjxy.fitness.biz;

import java.util.List;
import java.util.Map;

import com.rjxy.fitness.entity.Fitnessuser;
import com.rjxy.fitness.entity.Message;
import com.rjxy.fitness.entity.Opinion;
import com.rjxy.fitness.entity.Space;

import sun.java2d.cmm.Profile;


public interface FitnessUserBiz {
	//添加个信签名
    public int insertSpace(Space space);
	//更新个性签名（根据登陆者ID）
    public List<Space> updateSpace(String id);
    //读取空间消息
    public List<Space> selectSpace(String id); 
    //插入课程
    int updateUserClass(Fitnessuser orderclass); 
    //删除课程
    int delClass(Fitnessuser orderclass); 
	//获取总页数
    public Integer getTotalPage(String spaceid,Integer rows);
  //读取空间并设置总页数和行数
    public List<Space> getALLSpace(String spaceid,Integer currentPage, Integer rows);

    Integer getTotalPage1(Integer rows);
    
	List<Space> getALLSpace1(Integer currentPage, Integer rows);
    
	//Integer getTotalPagefriend(Integer rows);
    
    //添加意见
    public int insertOpinion(Opinion opinion);
   	//读取意见
    public List<Opinion> getALLOpinion(String id);
		
	//更新用户的基础信息
	  public int updateFitnessUser(Fitnessuser user);
	//处理验证消息
	  public int doCheckMessage(String mid,String resu);
	//添加好友
	  public int insertUserFriend(Fitnessuser loginuser,String friendid);
	//查找登录用户的不是好友列表
	  public List<Fitnessuser> selectNotFriends(String id);
	  //public List<Fitnessuser> selectNotFriends(String id,Integer currentPage,Integer rows);
	//查找登录用户的好友列表
	  public List<Fitnessuser> selectUserFriends(String id);
	//实现登录业务
      public Fitnessuser selectLoginUser (Map map);
    //实现注册的业务
      public int insertUser(Fitnessuser user);
      //实现图片缓存
	 //void saveimg(Fitnessuser profilehead);
      List<Fitnessuser> list();
	
      public void addUser(Fitnessuser profilehead);
	
      public Fitnessuser selectuserid(String userid);
	public List<Fitnessuser> getALLUser(Integer currentPage, Integer rows);
	public Integer getTotalPageu(Integer rows);
      	
	
    
}
