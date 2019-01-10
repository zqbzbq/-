package com.rjxy.fitness.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rjxy.fitness.biz.F_ClassBiz;
import com.rjxy.fitness.biz.F_TrainBiz;
import com.rjxy.fitness.biz.FitnessUserBiz;
import com.rjxy.fitness.biz.OpinionBiz;
import com.rjxy.fitness.entity.F_class;
import com.rjxy.fitness.entity.F_train;
import com.rjxy.fitness.entity.Fitnessuser;
import com.rjxy.fitness.entity.Opinion;
import com.rjxy.fitness.mapper.F_classMapper;
import com.rjxy.fitness.mapper.F_trainMapper;
import com.rjxy.fitness.util.DateUtil;
import com.rjxy.fitness.util.Page;


@Controller
// 一级路径
@RequestMapping(value = "backend")
public class FitnessAdminController {
	@Autowired
	private FitnessUserBiz fitnessUserBiz;
	@Autowired
	private F_ClassBiz f_classbiz;
	@Autowired
	private F_TrainBiz f_trainbiz;
	@Autowired
	private F_trainMapper f_trainMapper;
	@Autowired
	private OpinionBiz opinionbiz;

	// 添加课程信息
	@RequestMapping(value = "addclasses")
	public String addclassses(HttpSession session, F_class fclass) {
		// 获取登录用户的信息
		// Fitnessuser loginUser = (Fitnessuser)
		// session.getAttribute("loginUser");
		// if (loginUser == null) {
		// return "login"; // 没有登录跳转到登录页面
		// }
		fclass.setId(DateUtil.getId()); // 利用工具类生产ID
		// fclass.setCalssname(calssname);//课程名
		f_classbiz.insertfclass(fclass);
		// 添加成功后，返回主页
		return "redirect:getallclasses.do?currentPage=1&rows=5";
	}

	// 修改课程
	@RequestMapping("updateClasses")
	public String UpdateUser(Model model, F_class fclass) {
		if (f_classbiz.updatefclass(fclass)) {
			fclass = f_classbiz.findfclassById(fclass.getId());
			model.addAttribute("fclass", fclass);
			return "redirect:getallclasses.do?currentPage=1&rows=5";
		}
		return "/error";
	}

	// 查询所有课程信息并进行分页处理
	@RequestMapping(value = "getallclasses")
	public String getallclasses(Integer currentPage, Integer rows, Model model) {
		// 获取总页数
		Integer totalPage = f_classbiz.getTotalPage(rows);
		// 查询到所有课程后添加到列表里

		List<F_class> fclass = f_classbiz.getALLClasses(currentPage, rows);
		// System.out.println(fclass.size());
		Page page = new Page();
		page.setFclass(fclass);
		page.setCurrentPage(currentPage);
		page.setTotalPage(totalPage);
		model.addAttribute("page", page);
		// 查询成功
		return "backend/manageClass";
	}

	// 查询单个课程
	@RequestMapping(value = "getclasses")
	public String getclasses(String id, Model model) {
		model.addAttribute("fclass", f_classbiz.findfclassById(id));
		// 查询成功
		return "backend/bianjiClass";
	}

	// 删除用户
	@RequestMapping(value = "delclasses")
	public String delclasses(String id, Model model) {
		model.addAttribute("fclass", f_classbiz.deletefclass(id));
		// System.out.println("jinlaile?");
		// 删除成功
		return "redirect:getallclasses.do?currentPage=1&rows=5";
	}

	// 添加教练信息
	@RequestMapping(value = "addtrain")
	public String addtrain(HttpSession session, F_train ftrain) {

		/*
		 * Fitnessuser loginUser = (Fitnessuser)
		 * session.getAttribute("loginUser"); if (loginUser == null ||
		 * loginUser.getChecktype() != 1) { // 没有登录跳转到登录页面
		 * session.setAttribute("msg","您的级别不够，请联系管理员"); return "login"; }
		 */
		ftrain.setId(DateUtil.getId()); // 利用工具类生产ID
		f_trainbiz.insertftrain(ftrain);
		// 添加成功后，返回主页
		return "redirect:getalltrains.do?currentPage=1&rows=5";
		// return "manage";
	}

	// 查询教练信息
	@RequestMapping(value = "seltrain")
	public String seltrain(HttpSession session) {
		// 获取登录用户的信息
		// Fitnessuser loginUser = (Fitnessuser)
		// session.getAttribute("loginUser");
		// if (loginUser == null) {
		// return "login"; // 没有登录跳转到登录页面
		// }
		session.setAttribute("trainslist", f_trainMapper.selectF_train(session.getId()));
		// 登陆成功
		return "user_space";
	}

	// 修改
	@RequestMapping("updateTrains")
	public String UpdateTrainUser(Model model, F_train ftrain, HttpSession session) {

		if (f_trainbiz.updateByPrimaryKeySelective(ftrain)) {
			ftrain = f_trainbiz.findftrainById(ftrain.getId());
			model.addAttribute("ftrain", ftrain);
			// return "redirect:getalltrains.do?currentPage=1&rows=5";
			return "redirect:getalltrains.do?currentPage=1&rows=5";
		}
		return "/error";
	}

	// 修改图片
	@RequestMapping(value = "updatetimg")
	public String updateimg(HttpSession session, F_train ftrain, HttpServletRequest request, Model model)
			throws Exception {

		// 保存数据库的路径
		String sqlPath = null;
		// 定义文件保存的本地路径
		String localPath = request.getServletContext().getRealPath("/train/");
		// System.out.println(localPath);
		// 定义 文件名
		String filename = null;
		if (!ftrain.getFile().isEmpty()) {
			// 生成uuid作为文件名称
			String uuid = UUID.randomUUID().toString().replaceAll("-", "");
			// 获得文件类型（可以判断如果不是图片，禁止上传）
			String contentType = ftrain.getFile().getContentType();
			// 获得文件后缀名
			String suffixName = contentType.substring(contentType.indexOf("/") + 1);
			// 得到 文件名
			filename = uuid + "." + suffixName;
			// 文件保存路径
			ftrain.getFile().transferTo(new File(localPath + "\\" + filename));
		}
		// 把图片的相对路径保存至数据库
		sqlPath = "train/" + filename;
		// System.out.println(sqlPath);
		ftrain.setImg(sqlPath);
		ftrain.setId((String) session.getAttribute("train_id"));
		f_trainbiz.updateByPrimaryKeySelective(ftrain);
		// ftrain = f_trainbiz.findftrainById(ftrain.getId());
		model.addAttribute("ftrain", ftrain);
		return "redirect:getalltrains.do?currentPage=1&rows=5";
	}

	// 查询所有教练信息并进行分页处理
	@RequestMapping(value = "getalltrains")
	public String getalltrains(Integer currentPage, Integer rows, Model model) {
		// 获取总页数
		Integer totalPage = f_trainbiz.getTotalPage(rows);
		// 查询到所有课程后添加到列表里

		List<F_train> ftrain = f_trainbiz.getALLTrains(currentPage, rows);
		// System.out.println(fclass.size());
		Page page = new Page();
		page.setFtrain(ftrain);
		page.setCurrentPage(currentPage);
		page.setTotalPage(totalPage);
		model.addAttribute("page", page);
		// 查询成功
		return "backend/manageTrain";
	}

	// 主页面查询所有教练信息并进行分页处理
	@RequestMapping(value = "getalltrains1")
	public String getalltrains1(Integer currentPage, Integer rows, Model model) {
		// 获取总页数
		Integer totalPage = f_trainbiz.getTotalPage(rows);
		// 查询到所有课程后添加到列表里

		List<F_train> ftrain = f_trainbiz.getALLTrains(currentPage, rows);
		// System.out.println(fclass.size());
		Page page = new Page();
		page.setFtrain(ftrain);
		page.setCurrentPage(currentPage);
		page.setTotalPage(totalPage);
		model.addAttribute("page", page);
		// 查询成功
		return "trainers";
	}

	// 查询单个教练
	@RequestMapping(value = "gettrains")
	public String gettrains(String id, Model model, HttpSession session) {
		session.setAttribute("train_id", id);
		model.addAttribute("ftrain", f_trainbiz.findftrainById(id));
		// 查询成功
		return "backend/bianjiTrain";

	}

	// 前台查询单个教练
	@RequestMapping(value = "gettrains1")
	public String gettrains1(String id, Model model) {
		model.addAttribute("ftrain", f_trainbiz.findftrainById(id));
		// 查询成功
		return "singletrainers";
	}

	// 删除用户
	@RequestMapping(value = "deltrains")
	public String deltrains(String id, Model model) {
		model.addAttribute("ftrain", f_trainbiz.deleteftrain(id));
		// System.out.println("jinlaile?");
		// 删除成功
		return "redirect:getalltrains.do?currentPage=1&rows=5";
	}

	// 添加教练并添加图片
	@RequestMapping(value = "inserttrain")
	public String upload(HttpSession session, F_train ftrain, HttpServletRequest request, Model model)
			throws Exception {
		// Fitnessuser loginUser = (Fitnessuser)
		// session.getAttribute("loginUser");
		// 保存数据库的路径
		String sqlPath = null;
		// 定义文件保存的本地路径
		String localPath = request.getServletContext().getRealPath("/train/");
		System.out.println(localPath);
		// 定义 文件名
		String filename = null;
		if (!ftrain.getFile().isEmpty()) {
			// 生成uuid作为文件名称
			String uuid = UUID.randomUUID().toString().replaceAll("-", "");
			// 获得文件类型（可以判断如果不是图片，禁止上传）
			String contentType = ftrain.getFile().getContentType();
			// 获得文件后缀名
			String suffixName = contentType.substring(contentType.indexOf("/") + 1);
			// 得到 文件名
			filename = uuid + "." + suffixName;
			// 文件保存路径
			ftrain.getFile().transferTo(new File(localPath + "\\" + filename));
		}
		// 把图片的相对路径保存至数据库
		sqlPath = "train/" + filename;
		System.out.println(sqlPath);
		ftrain.setImg(sqlPath);
		ftrain.setId(DateUtil.getId());
		f_trainbiz.insertftrain(ftrain);
		model.addAttribute("ftrain", ftrain);
		// Map<String, String> pmap = new HashMap<>();
		// pmap.put("userid", loginUser.getUserid());
		// pmap.put("password", loginUser.getPassword());
		// session.setAttribute("loginUser",
		// fitnessUserBiz.selectLoginUser(pmap));
		return "redirect:getalltrains.do?currentPage=1&rows=5";
	}
	
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
			return "backend/manageOpinon";
		}

		// 查询�?有用户信息并进行分页处理
				@RequestMapping(value = "getalluser")
				public String getallusers(Integer currentPage, Integer rows, Model model) {
					// 获取总页�?
					Integer totalPage = fitnessUserBiz.getTotalPageu(rows);
					// 查询到所有课程后添加到列表里

					List<Fitnessuser> fuser = fitnessUserBiz.getALLUser(currentPage, rows);
					// System.out.println(hclass.size());
					Page page = new Page();
					page.setFuser(fuser);
					page.setCurrentPage(currentPage);
					page.setTotalPage(totalPage);
					model.addAttribute("page", page);
					// 查询成功
					return "backend/manageUser";
				}

				// 查询单个用户
				/*@RequestMapping(value = "getuser")
				public String getuser(String id, Model model) {
					model.addAttribute("hclass", fitnessUserBiz.findfuserById(id));
					// 查询成功
					return "backend/bianjiUser";
				}*/
				
		
		
		
}
