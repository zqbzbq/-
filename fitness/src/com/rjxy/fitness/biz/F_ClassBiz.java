package com.rjxy.fitness.biz;

import java.util.List;

import com.rjxy.fitness.entity.F_class;

public interface F_ClassBiz {

	//添加课程
	int insertfclass(F_class fclass);
	//读取课程并设置总页数和行数
	List<F_class> getALLClasses(Integer currentPage, Integer rows);
	//获取总页数
	Integer getTotalPage(Integer rows);

	//更新课程
	boolean updatefclass(F_class fclass);
	//删除课程
	boolean deletefclass(String id);
    //根据ID选取课程——经行修改
	F_class findfclassById(String id);


}
