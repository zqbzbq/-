package com.rjxy.fitness.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rjxy.fitness.biz.F_TrainBiz;
import com.rjxy.fitness.entity.F_train;
import com.rjxy.fitness.mapper.F_trainMapper;

@Service(value = "f_TrainUserBiz")
public class F_TrainBizImpl implements F_TrainBiz{
	@Autowired
	private F_trainMapper f_trainmapper;
		
	//添加教练
	@Override
	public int insertftrain(F_train ftrain) {
		return f_trainmapper.insertSelective(ftrain);
	}

	//查询所有教练
	/*@Override
	public List<F_train> getALLTrains() {
		List<F_train> allTrain =f_trainmapper.getALLTrains();
		return allTrain;
	}*/
 
	//更新
	@Override
	public boolean updateftrain(F_train ftrain) {
		// TODO Auto-generated method stub
		return f_trainmapper.updateftrain(ftrain);
	}

	//删除
	@Override
	public boolean deleteftrain(String id) {
		// TODO Auto-generated method stub		
		return f_trainmapper.deleteftrain(id);
	}

	//根据ID查找
	@Override
	public F_train findftrainById(String id) {
		// TODO Auto-generated method stub
		F_train trains =f_trainmapper.findftrainById(id);
		return trains;
	}
	//获取总页数
	@Override
	public Integer getTotalPage(Integer rows) {
		// TODO Auto-generated method stub
		List<String> totalList= f_trainmapper.getCount();
		int total = totalList.size();
		System.out.println(total);
		int totalPage =total%rows==0? (total/rows):((total/rows)+1); 
		return totalPage;
	}

	//获取教练总条目
	@Override
	public List<F_train> getALLTrains(Integer currentPage, Integer rows) {
		// TODO Auto-generated method stub
		if(currentPage<=0){currentPage=1;}
        int start = (currentPage-1)*rows;
        List<F_train> getalltrains=f_trainmapper.getALLTrains(start,rows);
		
		return getalltrains;
	}
	
	@Override
	public boolean updateByPrimaryKeySelective(F_train ftrain) {
		// TODO Auto-generated method stub
		return f_trainmapper.updateByPrimaryKeySelective(ftrain);
	}
	

}
