package com.rjxy.fitness.util;


import java.io.Serializable;
import java.util.List;

import com.rjxy.fitness.entity.F_class;
import com.rjxy.fitness.entity.F_train;
import com.rjxy.fitness.entity.Fitnessuser;
import com.rjxy.fitness.entity.Opinion;
import com.rjxy.fitness.entity.Space;




@SuppressWarnings("serial")
public class Page implements Serializable{
	private Integer currentPage;
	private Integer totalPage;
	private List<Space> space;
	private List<F_class> fclass;
	private List<F_train> ftrain;
	private List<Opinion> opinion;
	private List<Fitnessuser> notfriendList;
	private List<Fitnessuser> fuser;
	
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public List<F_class> getFclass() {
		return fclass;
	}
	public void setFclass(List<F_class> fclass) {
		
		this.fclass = fclass;
	}
	public List<F_train> getFtrain() {
		return ftrain;
	}
	public void setFtrain(List<F_train> ftrain) {
		this.ftrain = ftrain;
	}
	
	public List<Opinion> getOpinion() {
		return opinion;
	}
	public void setOpinion(List<Opinion> opinion) {
		this.opinion = opinion;
	}
	public List<Space> getSpace() {
		return space;
	}
	public void setSpace(List<Space> space) {
		this.space = space;
	}
	public List<Fitnessuser> getNotfriendList() {
		return notfriendList;
	}
	public void setNotfriendList(List<Fitnessuser> notfriendList) {
		this.notfriendList = notfriendList;
	}
	public List<Fitnessuser> getFuser() {
		return fuser;
	}
	public void setFuser(List<Fitnessuser> fuser) {
		this.fuser = fuser;
	}
	

	
	
}

