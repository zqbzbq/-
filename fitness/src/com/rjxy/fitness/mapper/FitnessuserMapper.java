package com.rjxy.fitness.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.rjxy.fitness.entity.Fitnessuser;




public interface FitnessuserMapper {
	//添加课程
	int insertUserClass(String orderclass);
	
    int insert(Fitnessuser record);   

    int insertSelective(Fitnessuser record);

    int deleteByPrimaryKey(String id);
	
  	Fitnessuser selectByPrimaryKey(String id);

    int updateByPrimaryKey(Fitnessuser record);
    
    int updateByPrimaryKeySelective(Fitnessuser record);
	
	
	 //登录方法利用Map对象保存多个参数）
    public Fitnessuser selectLoginUser(Map map);
    
  //查找登录用户的好友列表
  	public List<Fitnessuser> selectUserFriends(String id);
	
  	//查找登录用户的不是好友列表
  	public List<Fitnessuser> selectNotFriends(String id);
	//public List<Fitnessuser> selectNotFriends(@Param("id")String id,@Param("start")int start, @Param("rows")Integer rows);
	
	//增加一个好友的方法
	public int insertFriendUser(Map pmap);
	//public int insertFriendUser(Map<String, String> pmap);
//图片
	int saveimg(Fitnessuser profilehead);
	//图片
	List<Fitnessuser> list();

	Fitnessuser selectuserid(String userid);

	int updateByPrimaryKeySelective1(Fitnessuser orderclass);

	List<String> getCount();

	List<Fitnessuser> selectNotFriends(String id, Integer currentPage, Integer rows);

	List<Fitnessuser> getALLUser(@Param("start")int start, @Param("rows")Integer rows);

	List<String> getCountu();

	



	 

	


}