package com.rjxy.fitness.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rjxy.fitness.biz.F_ClassBiz;
import com.rjxy.fitness.biz.FitnessUserBiz;
import com.rjxy.fitness.entity.F_class;
import com.rjxy.fitness.entity.Fitnessuser;

@Controller
//一级路径
@RequestMapping(value = "ordercalss")
public class ClassController {

	@Autowired
	private FitnessUserBiz fitnessUserBiz;
	@Autowired
	private F_ClassBiz fclassBiz;
	
	// 删除用户课程
		@RequestMapping(value = "deluserclass")
		public String deluserclass(String oclass, Fitnessuser user, F_class fclass,HttpSession session) {
			// 获取当前登录用户
			Fitnessuser loginUser = (Fitnessuser) session.getAttribute("loginUser");
			if (loginUser == null) {
				return "login"; // 没有登录跳转到登录页面
			}
			// 获取课程
			user.setId(loginUser.getId());	
			System.out.println(loginUser.getId());
			user.setOrderclass(null);
			// 处理用户跟新
			fitnessUserBiz.delClass(user);

			// 查询用户
			Map<String, String> pmap = new HashMap<>();
			pmap.put("userid", loginUser.getUserid());
			pmap.put("password", loginUser.getPassword());

			// 将查询的用户重新放入session中
			session.setAttribute("loginUser", fitnessUserBiz.selectLoginUser(pmap));
			// 更新完后，重新登录
			return "redirect:/classanduser/getallclasses.do?currentPage=1&rows=5";
			// return "redirect:/info-setting.jsp";
		}
}
