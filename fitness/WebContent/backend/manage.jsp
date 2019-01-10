<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE HTML>
<html>
	<head>
		<title>斯跑特瑜伽健身网站后台管理页面</title>
		<meta charset="utf-8"/>
		<style type="text/css">
		</style>
	</head>
	<!-- frameset组织页面结构 -->
	<frameset rows="13%, 87%" frameborder="0" framespacing="0">
		<frame src="<%=basePath %>backend/_top.jsp" noresize="noresize"/>
		<frameset cols="14%, 86%" frameborder="0" framespacing="0">
			<frame src="<%=basePath %>backend/_left.jsp" noresize="noresize"/>
			<frame src="<%=basePath %>backend/_right.jsp" name="rightFrame"  noresize="noresize"/>
		</frameset>
	</frameset>
	<body>
	</body>
</html>
