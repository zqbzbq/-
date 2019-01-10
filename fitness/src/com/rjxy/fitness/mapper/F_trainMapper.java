package com.rjxy.fitness.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.rjxy.fitness.entity.F_train;

public interface F_trainMapper {
	int insert(F_train record);   

	//添加教练
    int insertSelective(F_train record);

    int deleteByPrimaryKey(String id);
	
  	F_train selectByPrimaryKey(String id);

    int updateByPrimaryKey(F_train record);
    
    boolean updateByPrimaryKeySelective(F_train record);

	//读取jiaolian
	List<F_train> selectF_train(String id);	
	//查找所有课程
	//List<F_train> getALLTrains();
	//更新课程
	boolean updateftrain(F_train ftrain);
	//删除课程
	boolean deleteftrain(String id);

//根据ID选取编辑教练
	F_train findftrainById(String id);
	//查找所有课程并分页
	List<F_train> getALLTrains(@Param("start")int start, @Param("rows")Integer rows);

	List<String> getCount();

	
}
