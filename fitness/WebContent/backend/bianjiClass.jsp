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
<title>_课程修改</title>
<script type="text/javascript">
    function updateUser() {
        var form = document.forms[0];
        form.action = "<%=basePath %>backend/updateClasses.do";
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
					<h1>课程修改</h1>
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
					<input type="hidden" name="id" value="${fclass.id }" />
					 课程名：<input type="text" name="classname" value="${fclass.classname }" /> 					
					 授课时间：<input type="date" name="times" value="${fclass.times }" /> 
					 授课人 <input type="text" name="shouke" value="${fclass.shouke }" />
					 课程信息<input type="text" name="content" value="${fclass.content }" />
					<input type="button" value="编辑" onclick="updateUser()" />
				 </form>
				
					</table>
				</div>
			</div>
		</div>

						
	</body>
</html>
