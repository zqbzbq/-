package com.rjxy.fitness.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rjxy.fitness.biz.F_ClassBiz;
import com.rjxy.fitness.entity.F_class;
import com.rjxy.fitness.mapper.F_classMapper;

@Service(value = "f_ClassUserBiz")
public class F_ClassBizImpl implements F_ClassBiz{
	
	@Autowired
	private F_classMapper f_classmapper;
	
	//获取课程总条目
	@Override
	public List<F_class> getALLClasses(Integer currentPage, Integer rows) {
		// TODO Auto-generated method stub
		if(currentPage<=0){currentPage=1;}
        int start = (currentPage-1)*rows;
        List<F_class> getallclasses=f_classmapper.getALLClasses(start,rows);
		
		return getallclasses;
	}
	
    //获取总页数
	@Override
	public Integer getTotalPage(Integer rows) {
		// TODO Auto-generated method stub
		List<String> totalList= f_classmapper.getCount();
		int total = totalList.size();
		System.out.println(total);
		int totalPage =total%rows==0? (total/rows):((total/rows)+1); 
		return totalPage;
	}
	
	
	//添加课程
	@Override
	public int insertfclass(F_class fclass) {
		
		return f_classmapper.insertSelective(fclass);		
	}
	
	//更新
	@Override
	public boolean updatefclass(F_class fclass) {
		// TODO Auto-generated method stub
		return f_classmapper.updatefclass(fclass);
	}
	//删除
	@Override
	public boolean deletefclass(String id) {
		// TODO Auto-generated method stub
		return f_classmapper.deletefclass(id);
	}
	//根据id查找
	@Override
	public F_class findfclassById(String id) {
		// TODO Auto-generated method stub
		F_class classes = f_classmapper.findfclassById(id);
		return classes;
	}
/*	//查询所有课程
	@Override
	public List<F_class> getALLClasses() {
		// TODO Auto-generated method stub
		List<F_class> allClasses = f_classmapper.getALLClasses();
		return allClasses;
	}
*/
	

}
