package com.rjxy.fitness.mapper;

import java.util.List;
import java.util.Map;

import com.rjxy.fitness.entity.Message;

public interface MessageMapper {
    int deleteByPrimaryKey(String id);

    int insert(Message record);

    int insertSelective(Message record);

    Message selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Message record);

    int updateByPrimaryKey(Message record);
   
    //更新消息的状态
    //public int updateMessageStatus(Map pmap);
	public int updateMessageStatus(Map<String, String> pmap);

	//读取验证消息列表（根据登陆者ID）
	public List<Message> selectCheckMessages(String id);
	
	//读取聊天消息列表
	//public List<Message> selectMessages(Map pmap);
	public List<Message> selectMessages(Map<String, String> pmap);
	
	//查询好友发送给我的未读取的消息个数
	public int selectNoReadMessageCount(Map map);
}