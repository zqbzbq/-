package com.rjxy.fitness.biz.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rjxy.fitness.biz.MessageBiz;
import com.rjxy.fitness.entity.Message;
import com.rjxy.fitness.mapper.MessageMapper;


@Service(value="messageBiz")
public class MessageBizImpl implements MessageBiz{
	@Autowired
	private MessageMapper messageMapper;
	
	
	//读取验证消息列表（根据登陆者ID）
	public List<Message> selectCheckMessages(String id){
		return messageMapper.selectCheckMessages(id);
	}
	//阅读聊天消息
		public List<Message> selectMessages(String fromid,String toid){
			//读取聊天消息
			Map<String,String> pmap = new HashMap<String,String>();
			pmap.put("fromid", fromid);
			pmap.put("toid", toid);
			List<Message> messageList=messageMapper.selectMessages(pmap);
			//更新聊天消息的状态
			pmap.put("type", "1"); //表示更新聊天消息的状态
			messageMapper.updateMessageStatus(pmap);
			return messageList;
		}
	//添加消息的方法
	public int insertMessage(Message message){
		return messageMapper.insert(message);
	}
	
	public int selectNoReadMessageCount(Map map){
		return messageMapper.selectNoReadMessageCount(map);
	}
	public MessageMapper getMessageMapper(){
		return messageMapper;
	}
	public void setMessageMapper(MessageMapper messageMapepr){
		this.messageMapper = messageMapper;
	}

}
