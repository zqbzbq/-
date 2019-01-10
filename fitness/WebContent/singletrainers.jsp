
<%@ page language="java" import="java.util.*,com.rjxy.fitness.entity.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE HTML>
<html>
  <head>
    <title>教练详情页面</title>
    <!-- <link href="static/fitness/css/prodInfo.css" rel="stylesheet" type="text/css"> -->
	<script type="text/javascript" src="static/fitness/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="static/fitness/js/productinfo.js"></script>
</head>
<base href="<%=basePath%>">	
<body>

	
		<div id="left"  >
			
			<div id="left_bottom" style="margin-top:100px ;margin-letf:300px; width:550px;float:left;">
				<p>教练图片</p>
				<img src="<%=basePath%>${ftrain.img}"width="384" height="470" />
				
			</div>
		
			<div id="right_top" style="margin-top:300px ;padding-left:100px;float:left;">
				<tr><td width="30px">教练名称</td> &nbsp;&nbsp;&nbsp;&nbsp;
				<td><span id="prod_name">${ftrain.trainname }</td><br/></span>
				</tr><br/>
				
				<tr><td width="30px">教授科目</td>&nbsp;&nbsp;&nbsp;&nbsp;
				<td><span id="prod_desc">${ftrain.trainuser }</td><br/></span>
				</tr><br/>
				
				<tr><td width="30px">自我简介</td>&nbsp;&nbsp;&nbsp;&nbsp;
				<td><span id="prod_desc">${ftrain.content }</td><br/></span>
				</tr><br/>
				
			
			</div>
		
			
	</div>

</body>
</html>
