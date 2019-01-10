package com.rjxy.fitness.biz;

import java.util.List;
import java.util.Map;

import com.rjxy.fitness.entity.Fitnessuser;
import com.rjxy.fitness.entity.Message;

public interface MessageBiz {
	
	//读取验证消息列表（根据登陆者ID）
	public List<Message> selectCheckMessages(String id);
	//阅读聊天消息
	public List<Message> selectMessages(String fromid,String toid);
	//添加消息的方法
	public int insertMessage(Message message);
	
   //查询好友发送给我的未读取消息个数
	public int selectNoReadMessageCount(Map map);
}
