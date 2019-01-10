package com.rjxy.fitness.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rjxy.fitness.biz.OpinionBiz;
import com.rjxy.fitness.entity.F_class;
import com.rjxy.fitness.entity.Opinion;
import com.rjxy.fitness.util.Page;
@Controller
@RequestMapping(value = "opinion")
public class OpinionController {
	@Autowired
	private OpinionBiz opinionbiz;
	
	// 查询所有意见信息并进行分页处理
	@RequestMapping(value = "getallopinion")
	public String getallopinion(Integer currentPage,Integer rows, Model model) {
		//获取总页数
		Integer totalPage = opinionbiz.getTotalPage(rows);
		//查询到所有意见后添加到列表里
		
		List<Opinion> opinion =opinionbiz.getALLOpinion(currentPage,rows);
		//System.out.println(fclass.size());
		Page page = new Page();
		page.setOpinion(opinion);
		page.setCurrentPage(currentPage);
		page.setTotalPage(totalPage);
		model.addAttribute("page",page);
		// 查询成功
		return "index";
	}
	
	//查询单个建议
	@RequestMapping(value = "getopinion")
	public String getclasses(String id,Model model) {
		model.addAttribute("fclass",opinionbiz.findopinionById(id));
		// 查询成功
		return "backend/bianjiOpinion";
	}
//删除用户
	@RequestMapping(value = "delopinion")
	public String delclasses(String id,Model model) {
		model.addAttribute("opinion",opinionbiz.deleteopinion(id));
		//System.out.println("jinlaile?");
		// 删除成功
		return "redirect:getallopinion1.do?currentPage=1&rows=5";
	}
	
	// 查询所有课程信息并进行分页处理2
		@RequestMapping(value = "getallopinion1")
		public String getallopinion1(Integer currentPage,Integer rows, Model model) {
			//获取总页数
			Integer totalPage = opinionbiz.getTotalPage(rows);
			//查询到所有课程后添加到列表里
			
			List<Opinion> opinion =opinionbiz.getALLOpinion(currentPage,rows);
			//System.out.println(fclass.size());
			Page page = new Page();
			page.setOpinion(opinion);
			page.setCurrentPage(currentPage);
			page.setTotalPage(totalPage);
			model.addAttribute("page",page);
			// 查询成功
			return "backend/manageOpinion";
		}
		

		//修改
		 @RequestMapping("updateopinion")
		 public String UpdateUser(Model model,Opinion opinion){ 
			 if(opinionbiz.updateopinion(opinion)){ 
				 opinion = opinionbiz.findopinionById(opinion.getId()); 
				 model.addAttribute("opinion", opinion); 
				 return "redirect:getallopinion.do?currentPage=1&rows=5"; 
				 } 
			 return "/error"; 
			 }
	
}
