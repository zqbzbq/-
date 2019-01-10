package com.rjxy.fitness.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rjxy.fitness.biz.OpinionBiz;
import com.rjxy.fitness.entity.Opinion;
import com.rjxy.fitness.mapper.OpinionMapper;

@Service(value = "opinionBiz")
public class OpinionBizImpl implements OpinionBiz {
	@Autowired
	private OpinionMapper opinionmapper;
	@Override
	public List<Opinion> getALLOpinion(Integer currentPage, Integer rows) {
		// TODO Auto-generated method stub
		
				if(currentPage<=0){currentPage=1;}
		        int start = (currentPage-1)*rows;
		        List<Opinion> getallopinion=opinionmapper.getALLOpinion(start,rows);
				
				return getallopinion;
	}

	@Override
	public Integer getTotalPage(Integer rows) {
		// TODO Auto-generated method stub
		List<String> totalList= opinionmapper.getCount();
		System.out.println(totalList);
		int total = totalList.size();
		System.out.println(total);
		int totalPage =total%rows==0? (total/rows):((total/rows)+1); 
		return totalPage;
	}

	@Override
	public Opinion findopinionById(String id) {
		// TODO Auto-generated method stub
		Opinion opinion =opinionmapper.findopinionById(id);
		return opinion;
	}

	@Override
	public boolean deleteopinion(String id) {
		// TODO Auto-generated method stub
		return opinionmapper.deleteopinion(id);
	}

	@Override
	public boolean updateopinion(Opinion opinion) {
		// TODO Auto-generated method stub
		return false;
	}

	
}
