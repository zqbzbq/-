<%@ page language="java" import="java.util.*,com.rjxy.fitness.entity.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE HTML>
<html>
	<head>
		<title>斯跑特瑜伽健身社交网站后台_right</title>
		<meta charset="utf-8"/>
		<style type="text/css">
			/* css样式 */
			body{
				background-color: #EDEDED;
				font-family: "微软雅黑";
				font-size: 14px;
			}
			#wel{
				text-align: center;
				padding: 180px 0px;
				font-size: 36px;
				color: #686868;
				text-shadow: 5px 5px 5px #444444;
			}
		</style>
	</head>
	<body margin="0">
		<div id="wel">欢迎登录斯跑特瑜伽健身社交网站后台管理系统 ...</div>	
	</body>
</html>