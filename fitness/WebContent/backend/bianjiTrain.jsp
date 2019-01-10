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
<title>_编辑教练</title>
<script type="text/javascript">
    function updateUser() {
        var form = document.forms[0];
        form.action = "<%=basePath %>backend/updateTrains.do";
        form.method = "post";
        form.submit();
    }
    function updateImg() {
        var form = document.forms[1];
        form.action = "<%=basePath %>backend/updatetimg.do";
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
					<h1>教练修改</h1>
				</div>
			</div>
			<!-- 按钮 -->
			<div class="row">
				<div class="col-md-4 col-md-offset-8">
					<a class="btn btn-primary" href="${path}manageTrain.jsp">新增</a>
				</div>
			</div>
			
			
			<!-- 表格  -->
			<div class="row">
				<div class="col-md-12">
				
					<table align="center" border="1" cellspacing="0px" cellpadding="5px"">
					<form id="tab1" action="" method="POST" enctype="multipart/form-data">
										
					<tr><input type="hidden" name="id" value="${ftrain.id }" /></tr>
					<tr> 教练名：<input type="text" name="trainname" value="${ftrain.trainname }" /> </tr>					
					<tr> 授课课程：<input type="text" name="trainuser" value="${ftrain.trainuser }" /> </tr>					
					 <tr>描述信息<input type="text" name="content" value="${ftrain.content }" /></tr>
					 	
					<input type="button" value="编辑" onclick="updateUser()" />				
				 </form>
					</table>
				</div>		
			</div>
						
			<hr>
			
			<div class="row">
				<div class="col-md-12">
				
					<table align="center" border="1" cellspacing="0px" cellpadding="5px"">
					<form name="table2" id="tab2" action="" method="POST" enctype="multipart/form-data">					
					<tr>
						<td>教练图片
						<input type="file" id="file" name="file" multiple >
					
					<input type="button" value="编辑头像 "onclick="updateImg()" />				
					</tr>
			
				 </form>
					</table>
				</div>
			</div>
		
		</div>
					
	</body>
</html>
