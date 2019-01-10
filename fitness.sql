/*
Navicat MySQL Data Transfer

Source Server         : zqb
Source Server Version : 50513
Source Host           : localhost:3306
Source Database       : fitness

Target Server Type    : MYSQL
Target Server Version : 50513
File Encoding         : 65001

Date: 2018-11-04 23:35:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `fitnessuser`
-- ----------------------------
DROP TABLE IF EXISTS `fitnessuser`;
CREATE TABLE `fitnessuser` (
  `id` varchar(100) NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `profilehead` varchar(255) DEFAULT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `firsttime` date DEFAULT NULL,
  `checktype` int(11) DEFAULT NULL,
  `lasttime` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `orderclass` varchar(255) DEFAULT NULL,
  `ltype` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fitnessuser
-- ----------------------------
INSERT INTO `fitnessuser` VALUES ('110', 'admin', '123456', '我会飞', '', '35', null, '', null, '0', '2018-10-16', '1', '纤体瑜伽', '0');
INSERT INTO `fitnessuser` VALUES ('20151612042', 'lrx', '0925', '力瑞香', '女', '21', 'upload/a9cabde1ff1048478203809cc8eb4aef.jpeg', '我陪你', '2018-10-15', '0', '2018-10-15', '1', '调理瑜伽', '0');
INSERT INTO `fitnessuser` VALUES ('20151612201', 'czh', '417', '曹振华', '男', '22', null, '我是超人', null, null, null, null, null, '0');
INSERT INTO `fitnessuser` VALUES ('20151612203', 'gy', '417', '高媛', '男', '21', null, null, null, null, null, null, null, '0');
INSERT INTO `fitnessuser` VALUES ('20151612204', 'yqh', '417', '杨老板', '男', '22', null, null, null, null, null, null, '纤体瑜伽', '0');
INSERT INTO `fitnessuser` VALUES ('20151612206', 'zqb', '0313', '张沁炳', '', '20', 'upload/82caa765e3ca499a8e1fe445d1669f97.jpeg', '今天实现了添加课程', '2018-10-15', '1', '2018-10-15', '1', '纤体瑜伽', '0');
INSERT INTO `fitnessuser` VALUES ('201806041612', '关羽', '110', '匿名', '男', '30', null, '', '2018-11-04', null, '2018-11-04', '1', null, '1');
INSERT INTO `fitnessuser` VALUES ('201806041943', 'guanyu', '110', '匿名', '男', '30', null, '', '2018-11-04', null, '2018-11-04', '1', null, '1');
INSERT INTO `fitnessuser` VALUES ('201812311257', '张泽龙', '427', '匿名', '男', '20', null, '', '2018-10-31', '0', '2018-10-31', '1', null, '0');
INSERT INTO `fitnessuser` VALUES ('201816311980', '张三', '110', '匿名', '男', '11', null, '', '2018-10-31', '1', '2018-10-31', '1', null, '2');
INSERT INTO `fitnessuser` VALUES ('201824041964', '321', '123', '匿名', '男', '20', null, '', '2018-11-04', null, '2018-11-04', '1', null, '0');
INSERT INTO `fitnessuser` VALUES ('201825311082', 'Lisi', '11', '匿名', '男', '11', null, '', '2018-10-31', '2', '2018-10-31', '1', null, '1');
INSERT INTO `fitnessuser` VALUES ('201840041020', '张公子', '110', '匿名', '男', '20', null, '', '2018-11-04', null, '2018-11-04', '1', null, '0');
INSERT INTO `fitnessuser` VALUES ('201853041986', '赵云', '123', '匿名', '男', '20', null, '', '2018-11-04', null, '2018-11-04', '1', null, '0');

-- ----------------------------
-- Table structure for `friend`
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `mineid` varchar(100) NOT NULL DEFAULT '',
  `friendid` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`mineid`,`friendid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO `friend` VALUES ('1', '2');
INSERT INTO `friend` VALUES ('110', '20151612206');
INSERT INTO `friend` VALUES ('2', '1');
INSERT INTO `friend` VALUES ('20151612042', '20151612206');
INSERT INTO `friend` VALUES ('20151612204', '20151612206');
INSERT INTO `friend` VALUES ('20151612206', '110');
INSERT INTO `friend` VALUES ('20151612206', '20151612042');
INSERT INTO `friend` VALUES ('20151612206', '20151612201');
INSERT INTO `friend` VALUES ('20151612206', '20151612203');
INSERT INTO `friend` VALUES ('20151612206', '20151612204');

-- ----------------------------
-- Table structure for `f_class`
-- ----------------------------
DROP TABLE IF EXISTS `f_class`;
CREATE TABLE `f_class` (
  `id` varchar(255) NOT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `content` varchar(1255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `times` varchar(255) DEFAULT NULL,
  `shouke` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of f_class
-- ----------------------------
INSERT INTO `f_class` VALUES ('201803041291', '111', '111', null, '', '111');
INSERT INTO `f_class` VALUES ('201824021346', '跆拳道', '这节课是第二节正式课程', null, '星期日', '张云');
INSERT INTO `f_class` VALUES ('201829011052', '瑜伽', '这是正是插入的第一节课', null, '2018', '张大婶');
INSERT INTO `f_class` VALUES ('201830041192', '333', '4545', null, '', '');
INSERT INTO `f_class` VALUES ('201830041549', '66666', '66666', null, '2018-11-06', '');
INSERT INTO `f_class` VALUES ('201832041120', '33222', '怎么回事', null, '', '');
INSERT INTO `f_class` VALUES ('201834041725', '这次', '有了吧', null, '', '');
INSERT INTO `f_class` VALUES ('201846021508', '泰拳', '欢迎大家', null, '星期六', '李白');
INSERT INTO `f_class` VALUES ('201849021648', '阴瑜伽', '星期六休息', null, '星期六', '力钩子');
INSERT INTO `f_class` VALUES ('201851021695', '阴瑜伽', '星期六休息', null, '星期六', '力狗子');

-- ----------------------------
-- Table structure for `f_train`
-- ----------------------------
DROP TABLE IF EXISTS `f_train`;
CREATE TABLE `f_train` (
  `id` varchar(255) NOT NULL,
  `trainname` varchar(255) DEFAULT NULL,
  `content` varchar(1255) DEFAULT NULL,
  `trainuser` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of f_train
-- ----------------------------
INSERT INTO `f_train` VALUES ('201801031362', '拉克丝', '德玛西亚万岁', '力量教学', 'train/e582ba8534114f4d8cac997c9b611f1c.png', null);
INSERT INTO `f_train` VALUES ('201804041005', '茹艺璇', '我是傻逼', '跆拳道', 'train/b473b7137d9f4367a2dc4172c9a50509.gif', null);
INSERT INTO `f_train` VALUES ('201811031249', '黑寡妇', '美国漫威漫画旗下超级英雄<br/>她接受过广泛的间谍训练，也是一名成功的芭蕾舞演员', '芭蕾、阴瑜伽、椭圆机', 'train/71397084192f4628a3155c9eeeac1601.jpeg', null);
INSERT INTO `f_train` VALUES ('201819031619', '女神一号', '前国家一级运动员', '调理瑜伽、爵士拉丁、跑步课程、形体塑型', 'train/d6ee9aaf156a444e92f1159ce9ca8d42.jpeg', null);
INSERT INTO `f_train` VALUES ('201820031880', '金刚狼', '美国漫威漫画旗下超级英雄<br/>\r\n超人类的敏捷、力量、弹跳<br/>', '腿部教学、散打、动感单车(极限冲刺)、搏击操。', 'train/42de94647c1f473b85fb2c9408cfcac0.jpeg', null);
INSERT INTO `f_train` VALUES ('201820031902', '美国队长', '美国漫威漫画旗下超级英雄 <br/>\r\n美国队长原本没有超能力，是个瘦弱的年轻人，借由超人士兵血清刺激其人体潜能，使之转化为“完美”的姿态。因此美国队长具有高度的智能、常人远所不及的力量、敏捷、敏锐度、体格。', '跆拳道、泰拳、肩部教学', 'train/2f630a3e28d340678328a16a642401b3.jpeg', null);
INSERT INTO `f_train` VALUES ('201821031140', '女神二号', '国家拳击运动员，荣获xxxxx奖 ', '民族舞、恰恰舞、动感单车(狂欢之夜)', 'train/031b8c6396454c2fb3fa2dd2e7c98e4d.png', null);
INSERT INTO `f_train` VALUES ('201821031282', '巨石强森', '演员、摔跤手<br/>\r\n强森26岁开始参加世界职业摔角联盟', '拳击、胸部教学、背部教学', 'train/0b0f55479b184f95a9cf893b1a4f1b02.jpeg', null);
INSERT INTO `f_train` VALUES ('201821031770', '男神1号', '国家一级运动员，荣获xxxxx奖', '手臂教学、腹部教学、动感单车(极限冲刺)、搏击操。', 'train/0653c73a7a514691aabbaf78218df7a0.png', null);
INSERT INTO `f_train` VALUES ('201822031918', '神奇女侠', '亚马逊公主戴安娜·普林斯取得奥林匹斯众神赐予的武器与装备，化身神奇女侠', '肚皮舞、调理瑜伽、东方舞', 'train/a2dc9b6641ff434abbe5da782d03ab63.jpeg', null);
INSERT INTO `f_train` VALUES ('201822031930', '女神三号', '前国家一级运动员', '调理瑜伽、爵士拉丁、跑步课程、形体塑型', 'train/bba35d4ceef24328b0a04a02e6a52f3c.jpeg', null);
INSERT INTO `f_train` VALUES ('201823031453', '杰森斯坦森', '演员', '自由搏击', 'train/46102b406efc4544b3a52abdc445a5af.jpeg', null);
INSERT INTO `f_train` VALUES ('201838031972', '力瑞香', '就爱玩法师', '王者荣耀游戏', 'train/3f78cc9878dd4843929ca2412233fb2f.jpeg', null);

-- ----------------------------
-- Table structure for `f_train_copy`
-- ----------------------------
DROP TABLE IF EXISTS `f_train_copy`;
CREATE TABLE `f_train_copy` (
  `id` varchar(255) NOT NULL,
  `trainname` varchar(255) DEFAULT NULL,
  `content` varchar(1255) DEFAULT NULL,
  `trainuser` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of f_train_copy
-- ----------------------------
INSERT INTO `f_train_copy` VALUES ('201801031362', '拉克丝', '德玛西亚万岁', '力量教学', 'train/e582ba8534114f4d8cac997c9b611f1c.png', null);
INSERT INTO `f_train_copy` VALUES ('201811031249', '黑寡妇', '美国漫威漫画旗下超级英雄<br/>她接受过广泛的间谍训练，也是一名成功的芭蕾舞演员', '芭蕾、阴瑜伽、椭圆机', 'train/71397084192f4628a3155c9eeeac1601.jpeg', null);
INSERT INTO `f_train_copy` VALUES ('201819031619', '女神一号', '前国家一级运动员', '调理瑜伽、爵士拉丁、跑步课程、形体塑型', 'train/d6ee9aaf156a444e92f1159ce9ca8d42.jpeg', null);
INSERT INTO `f_train_copy` VALUES ('201820031880', '金刚狼', '美国漫威漫画旗下超级英雄<br/>\r\n超人类的敏捷、力量、弹跳<br/>', '腿部教学、散打、动感单车(极限冲刺)、搏击操。', 'train/42de94647c1f473b85fb2c9408cfcac0.jpeg', null);
INSERT INTO `f_train_copy` VALUES ('201820031902', '美国队长', '美国漫威漫画旗下超级英雄 <br/>\r\n美国队长原本没有超能力，是个瘦弱的年轻人，借由超人士兵血清刺激其人体潜能，使之转化为“完美”的姿态。因此美国队长具有高度的智能、常人远所不及的力量、敏捷、敏锐度、体格。', '跆拳道、泰拳、肩部教学', 'train/2f630a3e28d340678328a16a642401b3.jpeg', null);
INSERT INTO `f_train_copy` VALUES ('201821031140', '女神二号', '国家拳击运动员，荣获xxxxx奖 ', '民族舞、恰恰舞、动感单车(狂欢之夜)', 'train/031b8c6396454c2fb3fa2dd2e7c98e4d.png', null);
INSERT INTO `f_train_copy` VALUES ('201821031282', '巨石强森', '演员、摔跤手<br/>\r\n强森26岁开始参加世界职业摔角联盟', '拳击、胸部教学、背部教学', 'train/0b0f55479b184f95a9cf893b1a4f1b02.jpeg', null);
INSERT INTO `f_train_copy` VALUES ('201821031770', '男神1号', '国家一级运动员，荣获xxxxx奖', '手臂教学、腹部教学、动感单车(极限冲刺)、搏击操。', 'train/0653c73a7a514691aabbaf78218df7a0.png', null);
INSERT INTO `f_train_copy` VALUES ('201822031918', '神奇女侠', '亚马逊公主戴安娜·普林斯取得奥林匹斯众神赐予的武器与装备，化身神奇女侠', '肚皮舞、调理瑜伽、东方舞', 'train/a2dc9b6641ff434abbe5da782d03ab63.jpeg', null);
INSERT INTO `f_train_copy` VALUES ('201822031930', '女神三号', '前国家一级运动员', '调理瑜伽、爵士拉丁、跑步课程、形体塑型', 'train/bba35d4ceef24328b0a04a02e6a52f3c.jpeg', null);
INSERT INTO `f_train_copy` VALUES ('201823031453', '杰森斯坦森', '演员', '自由搏击', 'train/46102b406efc4544b3a52abdc445a5af.jpeg', null);
INSERT INTO `f_train_copy` VALUES ('201838031972', '力瑞香', '就爱玩法师', '王者荣耀游戏', 'train/3f78cc9878dd4843929ca2412233fb2f.jpeg', null);

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` varchar(100) NOT NULL,
  `fromid` varchar(100) DEFAULT NULL,
  `toid` varchar(100) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('123456', '20151612206', '20151612042', '1', '2018-10-15', '你好呀香香', '1');
INSERT INTO `message` VALUES ('1234567', '20151612042', '20151612206', '1', '2018-10-15', '你好呀饼饼', '1');
INSERT INTO `message` VALUES ('201801241264', '20151612206', '110', '0', '2018-10-24', '张沁炳，要求添加你为好友', '1');
INSERT INTO `message` VALUES ('201805161683', '20151612206', '20151612042', '1', '2018-10-16', 'hi', '1');
INSERT INTO `message` VALUES ('201807161600', '20151612206', '', '1', '2018-10-16', '66666你好', '0');
INSERT INTO `message` VALUES ('201807161916', '20151612206', '20151612042', '1', '2018-10-16', '你好111', '1');
INSERT INTO `message` VALUES ('201813161321', '20151612206', '20151612042', '1', '2018-10-16', '你好', '1');
INSERT INTO `message` VALUES ('201816171846', '20151612206', '20151612042', '1', '2018-10-17', '今天是2018-10-17', '1');
INSERT INTO `message` VALUES ('201818241010', '20151612206', '20151612201', '1', '2018-10-24', '我还添加你为我的好友', '0');
INSERT INTO `message` VALUES ('201818241399', '20151612201', '20151612206', '0', '2018-10-24', '曹振华，要求添加你为好友', '0');
INSERT INTO `message` VALUES ('201824241896', '20151612042', '20151612206', '1', '2018-10-24', '啦啦啦啦,做的怎么样了', '0');
INSERT INTO `message` VALUES ('201826241978', '20151612042', '20151612206', '1', '2018-10-24', '说话呀', '0');
INSERT INTO `message` VALUES ('201828241454', '20151612042', '20151612206', '1', '2018-10-24', '能看到我的头像吗', '0');
INSERT INTO `message` VALUES ('201833161577', '20151612206', '20151612042', '1', '2018-10-16', '找我干嘛狗子', '1');
INSERT INTO `message` VALUES ('201833241388', '20151612206', '110', '0', '2018-10-24', '张沁炳，要求添加你为好友', '1');
INSERT INTO `message` VALUES ('201835241090', '20151612204', '', '1', '2018-10-24', '我不好', '0');
INSERT INTO `message` VALUES ('201835241399', '20151612206', '20151612204', '1', '2018-10-24', '你好', '1');
INSERT INTO `message` VALUES ('201836241963', '20151612204', '20151612042', '0', '2018-10-24', '杨老板，要求添加你为好友', '0');
INSERT INTO `message` VALUES ('201838241569', '20151612204', '20151612042', '0', '2018-10-24', '杨老板，要求添加你为好友', '0');
INSERT INTO `message` VALUES ('201839161736', '20151612206', '110', '0', '2018-10-16', '张沁炳，要求添加你为好友', '1');
INSERT INTO `message` VALUES ('201839241029', '20151612206', '110', '0', '2018-10-24', '张沁炳，要求添加你为好友', '1');
INSERT INTO `message` VALUES ('201852161878', '20151612206', '20151612042', '1', '2018-10-16', 'hi', '1');
INSERT INTO `message` VALUES ('201856171708', '20151612206', '20151612042', '1', '2018-10-17', '九点了该回家啦', '1');
INSERT INTO `message` VALUES ('201858241411', '20151612206', '110', '0', '2018-10-24', '张沁炳，要求添加你为好友', '1');
INSERT INTO `message` VALUES ('201858241876', '20151612206', '20151612201', '1', '2018-10-24', 'NIHSIWODEHAOYOUMA', '0');

-- ----------------------------
-- Table structure for `opinion`
-- ----------------------------
DROP TABLE IF EXISTS `opinion`;
CREATE TABLE `opinion` (
  `id` varchar(255) NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `content` varchar(1255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of opinion
-- ----------------------------
INSERT INTO `opinion` VALUES ('111', '11', '11', '1', '111', '2018-11-13 10:23:22');
INSERT INTO `opinion` VALUES ('201828011875', null, '张泽龙', '1383555555', '可以管理教练吗', '2018-11-01 10:28:36');
INSERT INTO `opinion` VALUES ('201828011949', null, '张泽龙', '1383555555', '可以管理教练吗', '2018-11-01 10:28:33');
INSERT INTO `opinion` VALUES ('201852301008', null, 'aaa', '110', 'weismbushiuds', '2018-10-30 19:52:18');
INSERT INTO `opinion` VALUES ('201852301434', '20151612206', '什么事可以把这个显示到主页', '110', '什么事可以把这个显示到主页', '2018-10-30 16:52:20');
INSERT INTO `opinion` VALUES ('5666', '1', '1', '1', '1', '2018-11-22 10:23:38');

-- ----------------------------
-- Table structure for `space`
-- ----------------------------
DROP TABLE IF EXISTS `space`;
CREATE TABLE `space` (
  `id` varchar(255) NOT NULL,
  `spaceid` varchar(255) DEFAULT NULL,
  `content` varchar(1255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `replynum` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of space
-- ----------------------------
INSERT INTO `space` VALUES ('11', '111', '111', '2018-10-11 21:47:52', null);
INSERT INTO `space` VALUES ('111', '5555', '2555', '2018-11-14 21:48:06', null);
INSERT INTO `space` VALUES ('123456', '20151612206', '今天是2018年，10月我不开心', '2018-10-17 00:00:00', '1');
INSERT INTO `space` VALUES ('201804301806', '20151612206', '你的名字和内容一样吗', '2018-10-30 17:04:52', null);
INSERT INTO `space` VALUES ('201817251824', '20151612206', '实现了课程添加！哈哈哈', '2018-10-25 10:17:50', null);
INSERT INTO `space` VALUES ('201818251822', '20151612206', '我刚才发的哪去了？！！', '2018-10-25 10:18:50', null);
INSERT INTO `space` VALUES ('201821171193', '20151612206', '滚滚滚', '2018-10-17 16:21:50', null);
INSERT INTO `space` VALUES ('201822171524', '20151612206', '雷锋的服务器炸了', '2018-10-17 19:22:37', null);
INSERT INTO `space` VALUES ('201823171507', '20151612206', '滚滚滚', '2018-10-17 16:23:49', null);
INSERT INTO `space` VALUES ('201824171383', '20151612206', '滚滚滚', '2018-10-17 16:24:08', null);
INSERT INTO `space` VALUES ('201824171474', '20151612206', '雷锋的服务器炸了', '2018-10-17 19:24:18', null);
INSERT INTO `space` VALUES ('201824171782', '20151612206', '哈哈哈哈', '2018-10-17 16:24:19', null);
INSERT INTO `space` VALUES ('201824171880', '20151612206', '滚滚滚', '2018-10-17 16:24:06', null);
INSERT INTO `space` VALUES ('201827241627', '20151612042', '我的头像怎么不显示', '2018-10-24 19:27:03', null);
INSERT INTO `space` VALUES ('201830251058', '20151612206', '啊啊啊啊', '2018-10-25 16:30:52', null);
INSERT INTO `space` VALUES ('201840181476', '20151612206', '今天没有买证书，省了一笔钱', '2018-10-18 16:40:56', null);
INSERT INTO `space` VALUES ('201841031473', '20151612206', '今天狗子不让我写代码', '2018-11-03 17:41:34', null);
INSERT INTO `space` VALUES ('201841181005', '20151612206', '今天没有买证书，省了一笔钱', '2018-10-18 16:41:00', null);
INSERT INTO `space` VALUES ('201844301542', '20151612206', '????不显示?', '2018-10-30 18:44:57', null);
INSERT INTO `space` VALUES ('201844301869', '20151612206', '????不显示?', '2018-10-30 18:44:54', null);
INSERT INTO `space` VALUES ('201845301942', '20151612206', '????不显示?', '2018-10-30 18:45:00', null);
INSERT INTO `space` VALUES ('201857011089', '20151612206', '分页了吗?', '2018-11-01 09:57:37', null);
INSERT INTO `space` VALUES ('201857011496', '20151612206', '分页了吗?', '2018-11-01 09:57:41', null);
