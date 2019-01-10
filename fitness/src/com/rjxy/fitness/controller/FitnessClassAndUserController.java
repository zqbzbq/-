package com.rjxy.fitness.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rjxy.fitness.biz.F_ClassBiz;
import com.rjxy.fitness.biz.F_TrainBiz;
import com.rjxy.fitness.entity.F_class;
import com.rjxy.fitness.entity.F_train;
import com.rjxy.fitness.mapper.F_classMapper;
import com.rjxy.fitness.mapper.F_trainMapper;
import com.rjxy.fitness.util.DateUtil;
import com.rjxy.fitness.util.Page;

@Controller
//一级路径
	@RequestMapping(value = "classanduser")
public class FitnessClassAndUserController {
	
		@Autowired
		private F_ClassBiz f_classbiz;
		@Autowired
		private F_classMapper f_calssMapper;
		@Autowired
		private F_TrainBiz f_trainbiz;
		@Autowired
		private F_trainMapper f_trainMapper;
		
		// 添加课程信息
			@RequestMapping(value = "addclasses")
			public String addclassses(HttpSession session, F_class fclass) {
				// 获取登录用户的信息
			    //Fitnessuser loginUser = (Fitnessuser) session.getAttribute("loginUser");
				//if (loginUser == null) {
				//	return "login"; // 没有登录跳转到登录页面
				//}
				fclass.setId(DateUtil.getId()); // 利用工具类生产ID
				//fclass.setCalssname(calssname);//课程名			
				f_classbiz.insertfclass(fclass);
				// 添加成功后，返回主页
				return "redirect:getallclasses.do?currentPage=1&rows=5";
			}
			
			//修改
			 @RequestMapping("updateClasses")
			 public String UpdateUser(Model model,F_class fclass){ 
				 if(f_classbiz.updatefclass(fclass)){ 
					 fclass = f_classbiz.findfclassById(fclass.getId()); 
					 model.addAttribute("fclass", fclass); 
					 return "redirect:getallclasses.do?currentPage=1&rows=5"; 
					 } 
				 return "/error"; 
				 }
	 		 
			// 查询所有课程信息并进行分页处理
					@RequestMapping(value = "getallclasses")
					public String getallclasses(Integer currentPage,Integer rows, Model model) {
						//获取总页数
						Integer totalPage = f_classbiz.getTotalPage(rows);
						//查询到所有课程后添加到列表里
						
						List<F_class> fclass =f_classbiz.getALLClasses(currentPage,rows);
						System.out.println(fclass.size());
						Page page = new Page();
						page.setFclass(fclass);
						page.setCurrentPage(currentPage);
						page.setTotalPage(totalPage);
						model.addAttribute("page",page);
						// 查询成功
						return "class";
				}
					
					// 查询意见信息
					@RequestMapping(value = "selclass")
					public String addopinion(HttpSession session) {
						
						session.setAttribute("F_classList", f_calssMapper.selectClasses(session.getId()));
						// 登陆成功
						return "class";
					}
			//查询单个课程
					@RequestMapping(value = "getclasses")
					public String getclasses(String id,Model model) {
						model.addAttribute("fclass",f_classbiz.findfclassById(id));
						// 查询成功
						return "singleclass";
					}
			//删除用户
					@RequestMapping(value = "delclasses")
					public String delclasses(String id,Model model) {
						model.addAttribute("fclass",f_classbiz.deletefclass(id));
						//System.out.println("jinlaile?");
						// 删除成功
						return "redirect:getallclasses.do?currentPage=1&rows=5";
					}
												
			   // 添加教练信息
					@RequestMapping(value = "addtrain")
					public String addtrain(HttpSession session, F_train ftrain) {
						
						/*Fitnessuser loginUser = (Fitnessuser) session.getAttribute("loginUser");
						if (loginUser == null || loginUser.getChecktype() != 1) {
							// 没有登录跳转到登录页面
							session.setAttribute("msg","您的级别不够，请联系管理员");
							return "login";			
						}*/
						ftrain.setId(DateUtil.getId()); // 利用工具类生产ID							
						f_trainbiz.insertftrain(ftrain);
						// 添加成功后，返回主页
						return "redirect:getalltrains.do?currentPage=1&rows=5";
						//return "manage";
					}
					
					// 查询教练信息
					@RequestMapping(value = "seltrain")
					public String seltrain(HttpSession session) {
						// 获取登录用户的信息
						//Fitnessuser loginUser = (Fitnessuser) session.getAttribute("loginUser");
						//if (loginUser == null) {
						//	return "login"; // 没有登录跳转到登录页面
						//}
						session.setAttribute("trainslist",f_trainMapper.selectF_train(session.getId()));
						// 登陆成功
						return "user_space";
					}
					
					//修改
					 @RequestMapping("updateTrains")
					 public String UpdateTrainUser(Model model,F_train ftrain,HttpSession session){
		
						 if(f_trainbiz.updateftrain(ftrain)){ 
							 ftrain = f_trainbiz.findftrainById(ftrain.getId()); 
							 model.addAttribute("ftrain", ftrain); 
							 return "redirect:getalltrains.do?currentPage=1&rows=5"; 
							 } 
						 return "/error"; 
						 }
					 
					 
					// 查询所有教练信息并进行分页处理
						@RequestMapping(value = "getalltrains")
						public String getalltrains(Integer currentPage,Integer rows, Model model) {
							//获取总页数
							Integer totalPage = f_trainbiz.getTotalPage(rows);
							//查询到所有课程后添加到列表里
							
							List<F_train> ftrain =f_trainbiz.getALLTrains(currentPage,rows);
							//System.out.println(fclass.size());
							Page page = new Page();
							page.setFtrain(ftrain);
							page.setCurrentPage(currentPage);
							page.setTotalPage(totalPage);
							model.addAttribute("page",page);
							// 查询成功
							return "backend/manageTrain";
						}
					 	 						
					// 查询所有课程信息
							/*@RequestMapping(value = "getalltrains")
							public String getalltrains(Model model) {
								List<F_train> ftrain =f_trainbiz.getALLTrains();
								//System.out.println(fclass.size());
								model.addAttribute("trainslist",ftrain);
								// 查询成功
								return "backend/manageTrain";
							}*/
					//查询单个教练
							@RequestMapping(value = "gettrains")
							public String gettrains(String id,Model model) {
								model.addAttribute("ftrain",f_trainbiz.findftrainById(id));
								// 查询成功
								return "singelclass";
							}
					//删除用户
							@RequestMapping(value = "deltrains")
							public String deltrains(String id,Model model) {
								model.addAttribute("ftrain",f_trainbiz.deleteftrain(id));
								//System.out.println("jinlaile?");
								// 删除成功
								return "redirect:getalltrains.do?currentPage=1&rows=5";
							}
							
					
	}

