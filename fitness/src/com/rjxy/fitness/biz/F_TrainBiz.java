package com.rjxy.fitness.biz;

import java.util.List;

import com.rjxy.fitness.entity.F_train;

public interface F_TrainBiz {

	//添加教练
	int insertftrain(F_train ftrain);
  
    
    boolean updateByPrimaryKeySelective(F_train record);
	//读取教练
	//List<F_train> getALLTrains();

	//更新教练
	boolean updateftrain(F_train ftrain);
	//删除教练
	boolean deleteftrain(String id);
	//根据ID选取教练——经行修改
	F_train findftrainById(String id);

	
	//获取总页数
	Integer getTotalPage(Integer rows);
	//读取教练并设置总页数和行数
	List<F_train> getALLTrains(Integer currentPage, Integer rows);

	

	

}
