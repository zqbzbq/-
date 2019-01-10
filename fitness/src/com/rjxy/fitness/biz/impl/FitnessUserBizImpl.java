package com.rjxy.fitness.biz.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rjxy.fitness.biz.FitnessUserBiz;
import com.rjxy.fitness.entity.F_train;
import com.rjxy.fitness.entity.Fitnessuser;
import com.rjxy.fitness.entity.Message;
import com.rjxy.fitness.entity.Opinion;
import com.rjxy.fitness.entity.Space;
import com.rjxy.fitness.mapper.FitnessuserMapper;
import com.rjxy.fitness.mapper.MessageMapper;
import com.rjxy.fitness.mapper.OpinionMapper;
import com.rjxy.fitness.mapper.SpaceMapper;
import com.rjxy.fitness.util.DateUtil;

@Service(value = "fitnessUserBiz")
public class FitnessUserBizImpl implements FitnessUserBiz {
	@Autowired
	private FitnessuserMapper fitnessuserMapper;
	@Autowired
	private MessageMapper messageMapper;
	@Autowired
	private SpaceMapper spaceMapper;
	@Autowired
	private OpinionMapper opinionMapper;

	// 更新用户的基础信息
	public int updateFitnessUser(Fitnessuser user) {
		return fitnessuserMapper.updateByPrimaryKeySelective(user);
	}

	// 处理验证消息
	public int doCheckMessage(String mid, String resu) {
		// 读取验证消息的内容
		Message message = messageMapper.selectByPrimaryKey(mid);
		// 修改消息的状态
		Map<String, String> pmap = new HashMap<String, String>();
		pmap.put("fromid", message.getFromid());
		pmap.put("toid", message.getToid());
		pmap.put("type", "0"); // 修改验证消息的状态
		messageMapper.updateMessageStatus(pmap);
		// 判断处理结果
		if ("yes".equals(resu)) {
			pmap.put("mineid", message.getFromid());
			pmap.put("friendid", message.getToid());
			fitnessuserMapper.insertFriendUser(pmap);
			pmap.put("mineid", message.getToid());
			pmap.put("friendid", message.getFromid());
			fitnessuserMapper.insertFriendUser(pmap);
		}
		return 0;
	}

	// 添加好友
	public int insertUserFriend(Fitnessuser loginuser, String friendid) {
		// 查询要添加的好友信息
		Fitnessuser friend = fitnessuserMapper.selectByPrimaryKey(friendid);
		// 判断好友身份信息
		if (friend.getChecktype() == 0) {
			// 允许添加(只要添加好友，则双向添加）
			Map<String, String> pmap = new HashMap<String, String>();
			pmap.put("mineid", loginuser.getId());
			pmap.put("friendid", friendid);
			fitnessuserMapper.insertFriendUser(pmap);
			pmap.put("mineid", friendid);
			pmap.put("friendid", loginuser.getId());
			fitnessuserMapper.insertFriendUser(pmap);
		} else {
			// 需要身份验证
			Message message = new Message();
			message.setFromid(loginuser.getId()); // 登录用户就是消息的发送者
			message.setId(DateUtil.getId()); // 利用工具类生产ID
			message.setToid(friendid);
			message.setContent(loginuser.getNickname() + "，要求添加你为好友");
			message.setStatus(0); // 未读消息
			message.setTime(new Date());
			message.setType(0); // 聊天消息
			messageMapper.insert(message);
		}
		return 0;
	}

	// 查找登录用户的不是好友列表
	public List<Fitnessuser> selectNotFriends(String id) {
		return fitnessuserMapper.selectNotFriends(id);
	}

	// 查找登录用户的好友列表
	public List<Fitnessuser> selectUserFriends(String id) {
		return fitnessuserMapper.selectUserFriends(id);
	}

	@Override
	// 实现注册的业务
	public int insertUser(Fitnessuser user) {
		// 注册之前验证用户的ID和密码是否存在
		Map<String, String> paramMap = new HashMap<String, String>();
		paramMap.put("userid", user.getUserid());
		paramMap.put("password", user.getPassword());
		Fitnessuser checkuser = fitnessuserMapper.selectLoginUser(paramMap);
		if (checkuser != null) {
			return -1; // 表示用户已存在
		}
		return fitnessuserMapper.insert(user);
	}

	
	// 阅读空间个性签名
	public List<Space> selectSpace(String id) {
	
		return spaceMapper.selectSpace(id);
	}

	@Override
	public Fitnessuser selectLoginUser(Map map) {
		// TODO Auto-generated method stub
		return fitnessuserMapper.selectLoginUser(map);
	}

	public FitnessuserMapper getChatuserMapper() {
		return fitnessuserMapper;
	}
	
//跟新空间
	@Override
	public List<Space> updateSpace(String id) {
		// TODO Auto-generated method stub
		return spaceMapper.updateSpace(id);
	}
	
	// 添加空间信息
	@Override
	public int insertSpace(Space space) {
		// TODO Auto-generated method stub
		return spaceMapper.insertSelective(space);
	}
//跟新用户预约课程
	@Override
	public int updateUserClass(Fitnessuser orderclass) {
		// TODO Auto-generated method stub
		 return fitnessuserMapper.updateByPrimaryKeySelective(orderclass);
	}

	//删除预约课程
		@Override
		public int delClass(Fitnessuser orderclass) {
			// TODO Auto-generated method stub
			 return fitnessuserMapper.updateByPrimaryKeySelective1(orderclass);
		}
	
	//添加意见
	@Override
	public int insertOpinion(Opinion opinion) {
		// TODO Auto-generated method stub
		return opinionMapper.insertSelective(opinion);
	}

	//查询所有意见
	@Override
	public List<Opinion> getALLOpinion(String id) {
		// TODO Auto-generated method stub		
		return opinionMapper.selectOpinion(id);
	}

	
//图片
	@Override
	public List<Fitnessuser> list() {
		// TODO Auto-generated method stub
		return fitnessuserMapper.list();
	}

	@Override
	public void addUser(Fitnessuser profilehead) {
		// TODO Auto-generated method stub
		fitnessuserMapper.updateByPrimaryKeySelective(profilehead);
	}

	@Override
	public Fitnessuser selectuserid(String userid) {
		// TODO Auto-generated method stub
		return fitnessuserMapper.selectuserid(userid);
	}


	//获取总页数
		@Override
		public Integer getTotalPage1(Integer rows1) {
			// TODO Auto-generated method stub
			List<String> totalList= spaceMapper.getCount1();
			int total = totalList.size();
			//System.out.println(total);
			int totalPage1 =total%rows1==0? (total/rows1):((total/rows1)+1); 
			return totalPage1;
		}
		//获取空间总条目
		@Override
		public List<Space> getALLSpace1(Integer currentPage, Integer rows) {
			// TODO Auto-generated method stub
			// TODO Auto-generated method stub
					if(currentPage<=0){currentPage=1;}
			        int start = (currentPage-1)*rows;
			        List<Space> getalltrains1=spaceMapper.getALLSpace1(start,rows);
					
					return getalltrains1;
		}
		
		
		//获取总页数
		@Override
		public Integer getTotalPage(String spaceid, Integer rows) {
			// TODO Auto-generated method stub
			List<String> totalList= spaceMapper.getCount(spaceid);
			int total = totalList.size();
			//System.out.println(total);
			int totalPage =total%rows==0? (total/rows):((total/rows)+1); 
			//System.out.println(totalPage);
			return totalPage;
		}
		//获取空间总条目
		@Override
		public List<Space> getALLSpace(String spaceid, Integer currentPage, Integer rows) {
			// TODO Auto-generated method stub
			if(currentPage<=0){currentPage=1;}
	        int start = (currentPage-1)*rows;
	        List<Space> getalltrains=spaceMapper.getALLSpace(spaceid,start,rows);			
			return getalltrains;
		}

		@Override
		public List<Fitnessuser> getALLUser(Integer currentPage, Integer rows) {
			// TODO Auto-generated method stub
			if(currentPage<=0){currentPage=1;}
	        int start = (currentPage-1)*rows;
	        List<Fitnessuser> getalluser=fitnessuserMapper.getALLUser(start,rows);
			
			return getalluser;
		}

		@Override
		public Integer getTotalPageu(Integer rows) {
			// TODO Auto-generated method stub
			List<String> totalList= fitnessuserMapper.getCount();
			int total = totalList.size();
			//System.out.println(total);
			int totalPage =total%rows==0? (total/rows):((total/rows)+1); 
			return totalPage;
		}

		
	

}
