package com.rjxy.fitness.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.rjxy.fitness.entity.Fitnessuser;
import com.rjxy.fitness.entity.Message;
import com.rjxy.fitness.entity.Space;

public interface SpaceMapper {
	//添加空间信息
    public int insertSpace(Space space);
	//更新个性签名（根据登陆者ID）
     public List<Space> updateSpace(String id);
    //读取个性签名列表 	
 	 public List<Space> selectSpace(String id);
	
 	int deleteByPrimaryKey(String id);

    int insert(Space record);

    int insertSelective(Space record);

    Space selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Space record);

    int updateByPrimaryKey(Space record);

    //分页
	public List<String> getCount(@Param("spaceid")String spaceid);
	public List<Space> getALLSpace(@Param("spaceid")String spaceid, @Param("start")int start, @Param("rows")Integer rows);
	public List<String> getCount1();
	public List<Space> getALLSpace1(@Param("start")int start, @Param("rows")Integer rows);
	
	

}
