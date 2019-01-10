<%@ page language="java" import="java.util.*,com.rjxy.fitness.entity.*"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<title>_编辑意见</title>
<script type="text/javascript">
    function updateUser() {
        var form = document.forms[0];
        form.action = "<%=basePath %>opinion/updateopinion.do";
        form.method = "post";
        form.submit();
    }
</script>

<meta charset="utf-8" />

<link href="css/bootstrap.min.css"
	rel="stylesheet">
<script type="text/javascript"
	src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript"
	src="js/bootstrap.min.js"></script>

</head>
<body >

<div class="container">
			<!-- 标题 -->
			
			<div class="row">
				<div class="col-md-12">
					<h1>编辑意见</h1>
				</div>
			</div>
			<!-- 按钮 -->
			<div class="row">
				<div class="col-md-4 col-md-offset-8">
					<a class="btn btn-primary" href="${path}manageClass.jsp">新增</a>
				</div>
			</div>
			<!-- 表格  -->
			<div class="row">
				<div class="col-md-12">
					<table class="table table-hover">
										
					<form action="" method="POST" enctype="multipart/form-data">
					<input type="hidden" name="id" value="${opinion.id }" />
					 用户id：<input type="text" name="userid" value="${opinion.userid }" /> 					
					 用户名：<input type="text" name="usernmae" value="${opinion.username }" /> 
					 联系方式 <input type="text" name="tel" value="${opinion.tel }" />
					 内容<input type="text" name="content" value="${opinion.content }" />
					 时间<input type="date" name="createtime" value="${opinion.createtime }" />
					<input type="button" value="编辑" onclick="updateUser()" />
				 </form>
				
					</table>
				</div>
			</div>
		</div>

						
	</body>
</html>
