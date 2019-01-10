package com.rjxy.fitness.biz;

import java.util.List;

import com.rjxy.fitness.entity.Space;

public interface SpaceBiz {

	 Integer getTotalPage1(Integer rows);
	    //全部空间
	 List<Space> getALLSpace1(Integer currentPage, Integer rows);
}
