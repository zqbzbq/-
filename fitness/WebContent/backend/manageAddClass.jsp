<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE HTML>
<html>
	<head>
		<style type="text/css">
			h1{
				text-align: center;
			}
		</style>
	</head>
	<body>
		<h1>斯跑特瑜伽健身社交网站_添加课程</h1>
		<hr>
			<form action="addclasses.do" method="POST" enctype="multipart/form-data">
				<table align="center" border="1" cellspacing="0px" cellpadding="5px">
					<tr>
						<td colspan="2" style="text-align:center;color:red">
							${requestScope.errMsg}
						</td>
					</tr>
					<tr>
						<td>课程名称</td>
						<td><input type="text" name="classname"/></td>
					</tr>
					<tr>
						<td>授课教练</td>
						<td><input type="text" name="shouke"/></td>
					</tr>
					<tr>
						<td>上课时间</td>
						<td><input type="date" name="times"/></td>
					</tr>	
					<tr>
						<td>课程描述信息</td>
						<td>
							<textarea rows="5" cols="30" name="content"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="添加课程"/></td>
					</tr>
				</table>
			</form>
		<hr>
	</body>
</html>
