
<%@ page language="java" import="java.util.*,com.rjxy.fitness.entity.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE HTML>
<html>
  <head>
    <title>课程详情页面</title>
   <link href="backend/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="backend/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="backend/js/bootstrap.min.js"></script>
</head>
<base href="<%=basePath%>">	
<body>

	<div class="col-md-12" style="background-color: #158FD1;" >
				<table class="table table-hover" align="center" style="margin-top: 150px;">
					<tr>
						<th width="100px;">课程号</th>
						<th width="200px;">课程名</th>
						<th width="200px;">时间</th>
						<th width="200px;">授课人</th>
						<th width="300px;">内容</th>
					</tr>

							<tr>
								<td align="center">${fclass.id}</td>
								<td align="center">${fclass.classname }</td>
								<td align="center">${fclass.times }</td>
								<td align="center">${fclass.shouke }</td>
								<td align="center">${fclass.content }</td>
								<td>
								
								<%-- <a type="button"
									href="classanduser/getclasses.do?id=${fclass.id}"
									class="btn btn-info btn-sm"> <span
										class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
										预定
								</a> --%> </td>
					</tr>
				</table>
			</div>

</body>
</html>
