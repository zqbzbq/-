package com.rjxy.fitness.biz;

import java.util.List;

import com.rjxy.fitness.entity.Opinion;

public interface OpinionBiz {

	//读取课程并设置总页数和行数
		List<Opinion> getALLOpinion(Integer currentPage, Integer rows);
		//获取总页数
		Integer getTotalPage(Integer rows);
		//根据ID选取课程——经行修改
		Opinion findopinionById(String id);
		//删除
		boolean deleteopinion(String id);
		//更新
		boolean updateopinion(Opinion opinion);
}
