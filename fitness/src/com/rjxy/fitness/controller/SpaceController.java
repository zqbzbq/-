package com.rjxy.fitness.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rjxy.fitness.biz.SpaceBiz;
import com.rjxy.fitness.entity.Space;
import com.rjxy.fitness.mapper.SpaceMapper;
import com.rjxy.fitness.util.Page;

@Controller
@RequestMapping(value = "space")
public class SpaceController {
	
	@Autowired
	private SpaceBiz spaceBiz;
	@Autowired
	private SpaceMapper spaceMapper;
	
	// 查询所有空间并进行分页处理
		@RequestMapping(value = "getallspace")
		public String getallclasses(Integer currentPage, Integer rows, Model model) {
			// 获取总页数
			Integer totalPage = spaceBiz.getTotalPage1(rows);
			// 查询到所有课程后添加到列表里
			List<Space> space = spaceBiz.getALLSpace1(currentPage, rows);
			//System.out.println(space.size());
			Page page = new Page();
			page.setSpace(space);
			page.setCurrentPage(currentPage);
			page.setTotalPage(totalPage);
			model.addAttribute("page", page);
			// 查询成功
			return "friend";
		}

}
