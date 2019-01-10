package com.rjxy.fitness.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rjxy.fitness.biz.SpaceBiz;
import com.rjxy.fitness.entity.Space;
import com.rjxy.fitness.mapper.SpaceMapper;

@Service(value = "spaceBiz")
public class SpaceBizImpl implements SpaceBiz{

	@Autowired
	private SpaceMapper spaceMapper;

	@Override
	public Integer getTotalPage1(Integer rows) {
		// TODO Auto-generated method stub
		List<String> totalList= spaceMapper.getCount1();
		int total = totalList.size();
		//System.out.println(total);
		int totalPage =total%rows==0? (total/rows):((total/rows)+1); 
		return totalPage;
	}

	@Override
	public List<Space> getALLSpace1(Integer currentPage, Integer rows) {
		// TODO Auto-generated method stub
		if(currentPage<=0){currentPage=1;}
        int start = (currentPage-1)*rows;
        List<Space> getallspace=spaceMapper.getALLSpace1(start,rows);
		
		return getallspace;
	}
	}

