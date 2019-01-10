<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE HTML>
<html>
	<head>
		<title>斯跑特瑜伽健身社交网站后台_left</title>
		<meta charset="utf-8"/>
		<style type="text/css">
			/* css样式 */
			body{
				background-color: #32323A;
				font-family: "微软雅黑";
				font-size: 14px;
			}
			body,div{
				margin: 0px;
				padding:0px;
			}
			div#menu_bar{
				font-size: 20px;
				color:#FFFFFF;
			}
			div#menu_bar div{
				border-top: 1px solid #cccccc;
				padding: 5px 0;
				text-indent: 15px;
				letter-spacing: 3px;
			}
			div#menu_bar div:last-child{
				border-bottom: 1px solid #cccccc;
			}
			div#menu_bar div:hover{
				background-color: #797981;
			}
			div#menu_bar div a{
				font-size: 20px;
				color:#FFFFFF;
				text-decoration: none;
			}
		</style>
	</head>
	<body margin="0">
		<div id="menu_bar">
		
			<div><a href="<%=basePath %>backend/manageAddClass.jsp" target="rightFrame">> 课程添加</a></div>
			<div><a href="<%=basePath %>backend/manageAddTrain.jsp" target="rightFrame">> 添加教练</a></div>
			<div><a href="<%=basePath %>backend/getallclasses.do?currentPage=1&rows=5" target="rightFrame">> 课程管理</a></div>
			<div><a href="<%=basePath %>backend/getalltrains.do?currentPage=1&rows=5" target="rightFrame">> 教练管理</a></div>
			<div><a href="<%=basePath %>opinion/getallopinion1.do?currentPage=1&rows=5" target="rightFrame">> 建议管理</a></div>
			<div><a href="<%=basePath %>backend/getalluser.do?currentPage=1&rows=5" target="rightFrame">> 用户管理</a></div>
			<div><a href="<%=basePath %>fitnessUser/logout.do" target="_top">> 退出</a></div>
		</div>		
	</body>
</html>
