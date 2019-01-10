<%@ page language="java" import="java.util.*,com.rjxy.fitness.entity.*"
	pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<title>_意见管理</title>
<link href="../static/backend/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="../static/backend/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="../static/backend/js/bootstrap.min.js"></script></head>

</head>
<body>


	<div class="container">
		<!-- 标题 -->
		欢迎登录斯跑特瑜伽健身社交网站后台管理系统 ——建议管理 .
		<div class="row">
			<div class="col-md-12">
				<h1>建议管理</h1>
			</div>
		</div>
		<!-- 按钮 -->
		<%-- <div class="row">
			<div class="col-md-4 col-md-offset-8">
				<a class="btn btn-primary" href="${path}manageAddClass.jsp">新增</a>
			</div>
		</div> --%>
		<!-- 表格  -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover">
					<tr>
						<th>id</th>
						<th>用户ID</th>
						<th>昵称</th>
						<th>联系方式</th>
						<th>内容</th>						
						<th>时间</th>
					</tr>


					<c:if test="${page.totalPage>0}">
						<c:forEach items="${page.opinion}" var="opinion">
							<tr>
								<td>${opinion.id}</td>
								<td>${opinion.userid }</td>
								<td>${opinion.username }</td>
								<td>${opinion.tel }</td>
								<td>${opinion.content }</td>
								 <td><fmt:formatDate value="${opinion.createdate }"
												pattern="yyyy-MM-dd" /></td>								
								<!-- <td><a  class="edit">编辑</a> <a
                                 class="delete">删除</a></td> -->
								<td><%-- <a type="button"
									href="${path}getopinion.do?id=${opinion.id}"
									class="btn btn-info btn-sm"> <span
										class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
										编辑
								</a> --%> <a type="button" href="${path}delopinion.do?id=${opinion.id}"
									class="btn btn-danger btn-sm"> <span
										class="glyphicon glyphicon-trash" aria-hidden="true"></span>
										删除
								</a></td>
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
								href="<%=basePath%>opinion/getallopinion1.do?currentPage=2&rows=5 ">下一页</a>
							<a
								href="<%=basePath%>opinion/getallopinion1.do?currentPage=${page.totalPage}&rows=5 ">尾页</a>
						</c:if>
						<!-- 非第一页也非最后一页-->
						<c:if
							test="${page.currentPage>1 and page.currentPage<page.totalPage}">
							<a
								href="<%=basePath%>opinion/getallopinion1.do?currentPage=1&rows=5">首页</a>
							<a
								href="<%=basePath%>opinion/getallopinion1.do?currentPage=${page.currentPage-1}&rows=5">上一页</a>
							<a
								href="<%=basePath%>opinion/getallopinion1.do?currentPage=${page.currentPage+1 }&rows=5 ">下一页</a>
							<a
								href="<%=basePath%>opinion/getallopinion1.do?currentPage=${page.totalPage}&rows=5 ">尾页</a>
						</c:if>
						<!-- 最后一页情形 -->
						<c:if test="${page.currentPage==page.totalPage}">
							<a
								href="<%=basePath%>opinion/getallopinion1.do?currentPage=1&rows=5 ">首页</a>
							<a
								href="<%=basePath%>opinion/getallopinion1.do?currentPage=${page.currentPage-1}&rows=5 ">上一页</a>
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