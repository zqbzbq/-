package com.rjxy.fitness.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.rjxy.fitness.biz.FitnessUserBiz;
import com.rjxy.fitness.biz.MessageBiz;
import com.rjxy.fitness.entity.Fitnessuser;
import com.rjxy.fitness.entity.Message;
import com.rjxy.fitness.entity.Opinion;
import com.rjxy.fitness.entity.Space;
import com.rjxy.fitness.mapper.OpinionMapper;
import com.rjxy.fitness.util.DateUtil;
import com.rjxy.fitness.util.FileUploadUtil;
import com.rjxy.fitness.util.Page;
import com.sun.org.apache.xerces.internal.util.SynchronizedSymbolTable;

@Controller
// 一级路径
@RequestMapping(value = "fitnessUser")
public class FitnessUserController {
	@Autowired
	private MessageBiz messageBiz;
	@Autowired
	private FitnessUserBiz fitnessUserBiz;
	@Autowired
	private OpinionMapper opinionMapper;

	// 更新用户头像
	@RequestMapping(value = "updateuserimg")
	public String updateuserimg(HttpSession session, HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// 处理用户更新(FileUploadUtil.backendAddMovie(req, resp))user;
		FileUploadUtil.update(req, resp);
		// 获取当前登录用户
		Fitnessuser loginUser = (Fitnessuser) session.getAttribute("loginUser");
		// 查询用户
		Map<String, String> pmap = new HashMap<>();
		pmap.put("userid", loginUser.getUserid());
		pmap.put("password", loginUser.getPassword());
		// 将查询的用户重新放入session中
		session.setAttribute("loginUser", fitnessUserBiz.selectLoginUser(pmap));
		// 更新完后，重新登录
		// return "redirect:/login.jsp";
		return "redirect:/info-setting.jsp";
	}


	// 查询所有用户
	@RequestMapping(value = "list")
	public String listUser(Model model) {
		List<Fitnessuser> list = fitnessUserBiz.list();
		model.addAttribute("list", list);
		//System.out.println(list);
		return "redirect:/info-setting.jsp";
	}
	
		@RequestMapping(value = "upload")
		public String upload(HttpSession session,Fitnessuser user,HttpServletRequest request,Model model) throws Exception{
			Fitnessuser loginUser = (Fitnessuser) session.getAttribute("loginUser");			
			//保存数据库的路径
		  String sqlPath = null; 
		  //定义文件保存的本地路径
	      String localPath=request.getServletContext().getRealPath("/upload/");
	      System.out.println(localPath);
	      //定义 文件名
	      String filename=null;  
	      if(!user.getFile().isEmpty()){  
	          //生成uuid作为文件名称  
	          String uuid = UUID.randomUUID().toString().replaceAll("-","");  
	          //获得文件类型（可以判断如果不是图片，禁止上传）  
	          String contentType=user.getFile().getContentType();  
	          //获得文件后缀名 
	          String suffixName=contentType.substring(contentType.indexOf("/")+1);
	          //得到 文件名
	          filename=uuid+"."+suffixName; 
	          //文件保存路径
	          user.getFile().transferTo(new File(localPath+"\\"+filename));  
	      }
	      //把图片的相对路径保存至数据库
	      sqlPath = "upload/"+filename;
	      //System.out.println(sqlPath);
	      user.setprofilehead(sqlPath);
	      fitnessUserBiz.addUser(user);
	      model.addAttribute("user", user);
	      Map<String, String> pmap = new HashMap<>();
			pmap.put("userid", loginUser.getUserid());
			pmap.put("password", loginUser.getPassword());
			session.setAttribute("loginUser", fitnessUserBiz.selectLoginUser(pmap));
		  return "info-setting";
		}
	
	
	
	// 更新用户信息
	@RequestMapping(value = "updateuser")
	public String updateuserimg(Fitnessuser user, HttpSession session) {
		// 处理用户更新
		fitnessUserBiz.updateFitnessUser(user);
		// 获取当前登录用户
		Fitnessuser loginUser = (Fitnessuser) session.getAttribute("loginUser");
		// 查询用户
		Map<String, String> pmap = new HashMap<>();
		pmap.put("userid", loginUser.getUserid());
		pmap.put("password", loginUser.getPassword());
		// 将查询的用户重新放入session中
		session.setAttribute("loginUser", fitnessUserBiz.selectLoginUser(pmap));
		// 更新完后，重新登录
		// return "redirect:/login.jsp";
		return "redirect:/info-setting.jsp";
	}

	// 更新用户密码
	@RequestMapping(value = "updateuserpad")
	public String updateuserpad(Fitnessuser user, HttpSession session) {
		// 获取密码
		user.setPassword(user.getPassword());
		// 处理用户更新
		fitnessUserBiz.updateFitnessUser(user);
		// 获取当前登录用户
		Fitnessuser loginUser = (Fitnessuser) session.getAttribute("loginUser");
		// 查询用户
		Map<String, String> pmap = new HashMap<>();
		pmap.put("userid", loginUser.getUserid());
		pmap.put("password", loginUser.getPassword());

		// 将查询的用户重新放入session中
		session.setAttribute("loginUser", fitnessUserBiz.selectLoginUser(pmap));

		// 更新完后，重新登录
		return "redirect:/login.jsp";
		// return "redirect:/info-setting.jsp";
	}

	// 更新用户课程
	@RequestMapping(value = "updateuserclass")
	public String updateuserclass(String oclass, Fitnessuser user, HttpSession session) {
		// 获取当前登录用户
		Fitnessuser loginUser = (Fitnessuser) session.getAttribute("loginUser");
		if (loginUser == null) {
			return "login"; // 没有登录跳转到登录页面
		}
		// 获取课程
		user.setId(loginUser.getId());
		user.setOrderclass(oclass);
		// 处理用户跟新
		fitnessUserBiz.updateUserClass(user);

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

	// 处理验证
	@RequestMapping(value = "doCheckMessage")
	public String doCheckMessage(String mid, String resu) {
		// 处理验证消息
		fitnessUserBiz.doCheckMessage(mid, resu);
		// 添加成功后，返回主页
		return "redirect:/fitnessUser/main.do";
	}

	// 添加朋友
	@RequestMapping(value = "addfriend")
	public String selectnotfriends(HttpSession session, String friendid) {
		// 获取登录用户的信息
		Fitnessuser loginUser = (Fitnessuser) session.getAttribute("loginUser");
		if (loginUser == null) {
			return "login"; // 没有登录跳转到登录页面
		}
		// 直接添加好友
		fitnessUserBiz.insertUserFriend(loginUser, friendid);
		// 添加成功后，返回主页面
		return "redirect:/fitnessUser/main.do";
	}

	// 查询不是好友的朋友
		@RequestMapping(value = "selectnotfriends")
		public String selectnotfriends(HttpSession session, Map map) {
			// 获取登录用户的信息
			Fitnessuser loginUser = (Fitnessuser) session.getAttribute("loginUser");
			if (loginUser == null) {
				return "login"; // 没有登录跳转到登录页面
			}
			// 获取不是当前用户的好友列表
			List<Fitnessuser> notfriendList = fitnessUserBiz.selectNotFriends(loginUser.getId());
			map.put("notfriendList", notfriendList);
			// 添加成功后，返回好友动态页面		
		 return "selectfriend";

	}
	
	

	// 添加消息
	@RequestMapping(value = "addmessage")
	public String main(HttpSession session, Message message) {
		// 获取登录用户的信息
		Fitnessuser loginUser = (Fitnessuser) session.getAttribute("loginUser");
		if (loginUser == null) {
			return "login"; // 没有登录跳转到登录页面
		}
		message.setFromid(loginUser.getId()); // 登录用户就是消息的发送者
		message.setId(DateUtil.getId()); // 利用工具类生产ID
		message.setStatus(0); // 未读消息
		message.setTime(new Date());
		message.setType(1); // 聊天消息
		messageBiz.insertMessage(message);
		// 添加成功后，返回主页
		return "redirect:/fitnessUser/main.do?friendid=" + message.getToid();
	}

	// 二级路径
	@RequestMapping(value = "main")
	public String main(HttpSession session, Map map, String friendid) {
		// 获取登录用户的信息
		Fitnessuser loginUser = (Fitnessuser) session.getAttribute("loginUser");
		if (loginUser == null) {
			// 没有登录跳转到登录页面
			return "login";			
		}
		// System.out.println(loginUser.getId());
		// 读取该登录用户的验证消息列表（根据登陆者ID）
		List<Message> checkList = messageBiz.selectCheckMessages(loginUser.getId());
		// System.out.println(checkList.size());
		map.put("checkList", checkList);
		// 实现读取聊天的功能
		if (friendid != null && !"".equals(friendid)) {
			// 查找好友给我发送来的消息列表
			List<Message> messageList = messageBiz.selectMessages(friendid, loginUser.getId());
			map.put("messageList", messageList);
			session.setAttribute("messageList", messageList);
		}

		// 查找好友信息
		List<Fitnessuser> friendList = fitnessUserBiz.selectUserFriends(loginUser.getId());
		// 读取每一个好友的未读取消息的个数
		for (int i = 0; i < friendList.size(); i++) {
			Fitnessuser friend = friendList.get(i);
			Map<String, String> pmap = new HashMap<String, String>();
			pmap.put("fromid", friend.getId());// 好友是发送者
			pmap.put("toid", loginUser.getId());// 登录用户是接收着
			int count = messageBiz.selectNoReadMessageCount(pmap);
			// 临时使用checktype保存未读取消息个数
			friend.setChecktype(count);
		}
		map.put("friendList", friendList);
		return "vip";
	}

	// 注册方法
	@RequestMapping(value = "register")
	public String register(Fitnessuser user, Map map) {
		user.setId(DateUtil.getId());
		user.setLtype(0);
		int num = fitnessUserBiz.insertUser(user);
		// 判断结果
		if (num == -1) {
			map.put("msg", "用户名或密码已存在");
			return "register";
		}
		// 登陆成功
		return "login";
	}

	@RequestMapping(value = "trains_reg")//教练注册
	public String sellerregist(Fitnessuser user, Map map) {
		user.setId(DateUtil.getId());
		user.setLtype(1);
		int num = fitnessUserBiz.insertUser(user);
		//Fitnessuser user1 = fitnessUserBiz.selectuserid(user.getUserid());
		if (num == -1) {
			map.put("msg", "用户名或密码已存在");
			return "register";
		}
		
		return "login";
	}
	
	
	// 登录
	@RequestMapping(value = "login")
	public String login(Fitnessuser user, HttpSession session) {
		Map<String, String> paramMap = new HashMap<String, String>();
		paramMap.put("userid", user.getUserid());
		paramMap.put("password", user.getPassword());
		Fitnessuser loginUser = fitnessUserBiz.selectLoginUser(paramMap);
		// 判断结果
		session.removeAttribute("msg");
		if (loginUser == null) {
			session.setAttribute("msg", "用户名或密码错误");
			return "login";
		}
		//教练
		if (loginUser.getLtype() == 1) {
			//session.setAttribute("msg", "用户名密码不存在");
			session.setAttribute("loginUser", loginUser);
			return "redirect:../opinion/getallopinion.do?currentPage=1&rows=5";
		}
		//管理员
		if (loginUser.getLtype() == 2) {
			//session.setAttribute("msg", "用户名密码不存在");
			session.setAttribute("loginUser", loginUser);
			return "backend/manage";
		}		
		if (loginUser.getLtype() == 0){
				// 登陆成功
		session.setAttribute("loginUser", loginUser);
		//return "redirect:/fitnessUser/sel_opinion.do";
		return "redirect:../opinion/getallopinion.do?currentPage=1&rows=5";
			}
		return "login";
		
	}

	@RequestMapping(value = "backendlogin")
	public String backendlogin(HttpSession session, Map map, String friendid) {
		// 获取登录用户的信息
		Fitnessuser loginUser = (Fitnessuser) session.getAttribute("loginUser");
		if (loginUser == null || loginUser.getLtype() !=2) {
			// 没有登录跳转到登录页面
			return "login";			
		}
		return "backend/manageAddTrain";
	}
	
	// 退出
	@RequestMapping(value = "logout")
	public String logout(Fitnessuser user, HttpSession session) {
		Fitnessuser logoutUser = (Fitnessuser) session.getAttribute("loginUser");
		if (logoutUser != null) {
			session.invalidate();
			return "redirect:../opinion/getallopinion.do?currentPage=1&rows=5";
		}

		return "redirect:../opinion/getallopinion.do?currentPage=1&rows=5";
	}

	// 查询所有空间信息并进行分页处理
	@RequestMapping(value = "getallspace")
	public String getallspace(HttpSession session,Integer currentPage,Integer rows, Model model,String spaceid) {
		// 获取登录用户的信息
				//Fitnessuser loginUser = (Fitnessuser) session.getAttribute("loginUser");
				//if (loginUser == null) {
				//	return "login"; // 没有登录跳转到登录页面
				//}	
		//获取总页数
		Integer totalPage = fitnessUserBiz.getTotalPage(spaceid,rows);
		//System.out.println(totalPage);
		//查询到所有课程后添加到列表里		
		List<Space> space =fitnessUserBiz.getALLSpace(spaceid,currentPage,rows);
		//System.out.println(fclass.size());
		Page page = new Page();
		page.setSpace(space);
		page.setCurrentPage(currentPage);
		page.setTotalPage(totalPage);
		model.addAttribute("page",page);
		// 查询成功
		return "user_space";
	}
	
	// 查询所有空间信息并进行分页处理
		@RequestMapping(value = "getallspace1")
		public String getallspace1(HttpSession session,Integer currentPage1,Integer rows1, Model model) {
			// 获取登录用户的信息
					Fitnessuser loginUser = (Fitnessuser) session.getAttribute("loginUser");
					if (loginUser == null) {
						return "login"; // 没有登录跳转到登录页面
					}	
			//获取总页数
			Integer totalPage1 = fitnessUserBiz.getTotalPage1(rows1);
			//查询到所有课程后添加到列表里		
			List<Space> space1 =fitnessUserBiz.getALLSpace1(currentPage1,rows1);
			//System.out.println(fclass.size());
			Page page1 = new Page();
			page1.setSpace(space1);
			page1.setCurrentPage(currentPage1);
			page1.setTotalPage(totalPage1);
			model.addAttribute("page",page1);
			// 查询成功
			return "user_space";
		}

	// 添加空间消息
	@RequestMapping(value = "addspace")
	public String main(HttpSession session, Space space) {
		// 获取登录用户的信息
		Fitnessuser loginUser = (Fitnessuser) session.getAttribute("loginUser");
		if (loginUser == null) {
			return "login"; // 没有登录跳转到登录页面
		}
		space.setSpaceid(loginUser.getId()); // 登录用户就是消息的发送者
		space.setId(DateUtil.getId()); // 利用工具类生产ID
		space.setCreatedate(new Date());
		fitnessUserBiz.insertSpace(space);
		// 添加成功后，返回主页
		//return "redirect:getallspace.do?currentPage=1&rows=5";
		return "information";
	}

	// 添加意见
	@RequestMapping(value = "addopinion")
	public String addopinion(HttpSession session, Opinion opinion) {
		// 获取登录用户的信息
		/*
		 * Fitnessuser loginUser =
		 * (Fitnessuser)session.getAttribute("loginUser"); if(loginUser ==null){
		 * return "login"; //没有登录跳转到登录页面 }
		 */
		opinion.setId(DateUtil.getId()); // 利用工具类生产ID
		opinion.setCreatedate(new Date());
		fitnessUserBiz.insertOpinion(opinion);
		// 添加成功后，返回主页
		return "contact";

	}
	

	// 查询意见信息
	@RequestMapping(value = "sel_opinion")
	public String addopinion(HttpSession session) {
		session.setAttribute("opinionList", opinionMapper.selectOpinion(session.getId()));
		// 登陆成功
		return "redirect:../opinion/getallopinion.do?currentPage=1&rows=5";
	}

}