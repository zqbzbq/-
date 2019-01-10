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
	
		<h1>斯跑特瑜伽健身社交网站_添加教练</h1>
		<hr>
			<form action="inserttrain.do" method="POST" enctype="multipart/form-data">
				<table align="center" border="1" cellspacing="0px" cellpadding="5px">
					<tr>
						<td colspan="2" style="text-align:center;color:red">
							${requestScope.errMsg}
						</td>
					</tr>
					<tr>
						<td>教练名称</td>
						<td><input type="text" name="trainname"/></td>
					</tr>
					<tr>
						<td>教授科目</td>
						<td><input type="text" name="trainuser"/></td>
					</tr>
					<tr>
						<td>教练图片</td>
						<td><input type="file" id="file" name="file" multiple /></td>
					</tr> 
					<tr>
						<td>教练描述</td>
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
