package com.rjxy.fitness.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.rjxy.fitness.entity.F_class;
import com.rjxy.fitness.entity.Opinion;

public interface F_classMapper {

	int insert(F_class record);   

	//添加课程
    int insertSelective(F_class record);

    int deleteByPrimaryKey(String id);
	
  	F_class selectByPrimaryKey(String id);

    int updateByPrimaryKey(F_class record);
    
    int updateByPrimaryKeySelective(F_class record);

   //读取课程
	List<F_class> selectF_class(String id);
	//查找所有课程
	List<F_class> getALLClasses(@Param("start")int start, @Param("rows")Integer rows);
	List<String> getCount();

	
	
	//更新课程
	boolean updatefclass(F_class fclass);
	//删除课程
	boolean deletefclass(String id);

	F_class findfclassById(String id);

	List<F_class> selectClasses(String id);

	
}
