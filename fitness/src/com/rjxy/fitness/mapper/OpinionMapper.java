package com.rjxy.fitness.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.rjxy.fitness.entity.Opinion;

public interface OpinionMapper {
	//添加意见信息
     int insertOpinion(Opinion opinion);
	//更新意见信息（根据登陆者ID）
      List<Opinion> updateOpinion(String id);
    //读取意见信息列表 	
 	  List<Opinion> selectOpinion(String id);
 	  
 	  //得到所有建议并分页
 	  List<Opinion> getALLOpinion(@Param("start")int start, @Param("rows")Integer rows);
 	  //得到总数
 	  List<String> getCount();
 	  //根据ID查找-编辑
 	  Opinion findopinionById(String id);
 	  //删除
 	  boolean deleteopinion(String id);
	
 	int deleteByPrimaryKey(String id);

    int insert(Opinion record);

    int insertSelective(Opinion record);

    Opinion selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Opinion record);

    int updateByPrimaryKey(Opinion record);
    
	
}
