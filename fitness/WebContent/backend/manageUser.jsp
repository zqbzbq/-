<%@ page language="java" import="java.util.*,com.rjxy.fitness.entity.*"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>_用户信息管理</title>
<link href="static/backend/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="static/backend/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="static/backend/js/bootstrap.min.js"></script>
</head>

<body >
	

		<div class="container">
			<!-- 标题 -->
			欢迎登录斯跑特瑜伽健身后台管理系统 ——用户信息管理.
			<div class="row">
				<div class="col-md-12">
					<h1>用户信息管理</h1>
				</div>
			</div>
			<!-- 按钮 -->
			<!-- <div class="row">
				<div class="col-md-4 col-md-offset-8">
					<a class="btn btn-primary" href="backend/manageAddTrain.jsp">新增</a>
				</div>
			</div> -->
			<!-- 表格  -->
			<div class="row">
				<div class="col-md-12">
					<table class="table table-hover">
						<tr>
							<th>账号名</th>
							<th>昵称</th>
							<th>性别</th>
							<th>年龄</th>
							<th>头像</th>
							<th>个性签名</th>
							<th>注册时间</th>
							<th>预定课程</th>
							<th>登录属性</th>
						</tr>
						<c:if test="${page.totalPage>0}">
						<c:forEach items="${page.fuser}" var="fuser">
							<tr>
								<td>${fuser.userid}</td>
								<td>${fuser.nickname}</td>
								<td>${fuser.sex}</td>
								<td>${fuser.age}</td>
								<td><img  src="<%=basePath%>${fuser.profilehead}"
									width="140" height="140" alt="" /></td>		
								<td>${fuser.profile}</td>				
								 <td><fmt:formatDate value="${fuser.firsttime}"
												pattern="yyyy-MM-dd" /></td>
								<%-- <td>${fuser.firsttime}</td> --%>
								<td>${fuser.orderclass}</td>
								<td>${fuser.ltype}</td>
								<%-- <td><a type="button"
									href="backend/gettrains.do?id=${htrain.id}"
									class="btn btn-info btn-sm"> <span
										class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
										编辑
								</a> <a type="button" href="backend/deltrains.do?id=${htrain.id}"
									class="btn btn-danger btn-sm"> <span
										class="glyphicon glyphicon-trash" aria-hidden="true"></span>
										删除
								</a></td> --%>
							</tr>
							</c:forEach>
							</c:if>																			
					</table>
				</div>
				
				<!-- 分页开始 -->
			<div id="spulist-pager">
				<!-- 分页条1开始 -->
				<div id="spulist-pager">
					<!-- 分页条1开始 -->
					<div class="pager1">
						<span> 【${page.currentPage}/${page.totalPage}】 </span>
						 	<c:if test="${requestScope.page.totalPage>1}"> 
						<!-- 第一页情形 -->
						<c:if test="${page.currentPage eq 1}">
							<a
								href="<%=basePath%>backend/getalluser.do?currentPage=2&rows=5 ">下一页</a>
							<a
								href="<%=basePath%>backend/getalluser.do?currentPage=${page.totalPage}&rows=5 ">尾页</a>
						</c:if>
						<!-- 非第一页也非最后一页-->
						<c:if
							test="${page.currentPage>1 and page.currentPage<page.totalPage}">
							<a
								href="<%=basePath%>backend/getalluser.do?currentPage=1&rows=5">首页</a>
							<a
								href="<%=basePath%>backend/getalluser.do?currentPage=${page.currentPage-1}&rows=5">上一页</a>
							<a
								href="<%=basePath%>backend/getalluser.do?currentPage=${page.currentPage+1 }&rows=5 ">下一页</a>
							<a
								href="<%=basePath%>backend/getalluser.do?currentPage=${page.totalPage}&rows=5 ">尾页</a>
						</c:if>
						<!-- 最后一页情形 -->
						<c:if test="${page.currentPage==page.totalPage}">
							<a
								href="<%=basePath%>backend/getalluser.do?currentPage=1&rows=5 ">首页</a>
							<a
								href="<%=basePath%>backend/getalluser.do?currentPage=${page.currentPage-1}&rows=5 ">上一页</a>
						</c:if>
						</c:if>
					</div>
					<!-- 分页条1结束 -->
				</div>
			</div>
		</div>
				
				
				
			</div>


	
</body>
</html>