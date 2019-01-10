<%@ page language="java" import="java.util.*,com.rjxy.fitness.entity.*"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>

<html>
<!--<![endif]-->
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
<title>欢迎注册斯跑特瑜伽健身社交网站</title>
<script src="static/register/jquery/jquery-2.1.4.min.js"></script>
<link rel="stylesheet" type="text/css" href="static/login/css/rdemo.css" />
<link rel="stylesheet" type="text/css" href="static/login/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="static/login/css/animate-custom.css" />
</head>
<body>


	<div class="container demo-1">
		<div class="content">
			<div id="large-header" class="large-header"
				style="position: absolute; float: left;">
				<canvas id="demo-canvas">
					</canvas>

			</div>
			<div class="container"
				style="float: left; position: relative; left: 1%; margin-top: 9%;">
				<header> </header>
				<section>
					<div id="container_demo">
						<div id="wrapper">
							<form action="<%=basePath%>fitnessUser/register.do" method="post" autocomplete="on">
								<h1>注册</h1>

								<p>
									<label for="usernamesignup" class="uname" data-icon="u">您的账号</label>
									<input id="username" name="userid"
										required="required" type="text" placeholder="请输入用户名" />
										<%-- <span id="user_checkHas" style="color:red;font-family:STkaiti;">${msg}</span> --%>
								</p>
								<p>
									<label for="passwordsignup" class="youpasswd" data-icon="p">您的密码
									</label> <input id="password" name="password"
										required="required" type="password" placeholder="请输入密码" />
								</p>
								<p> 
                                    <label for="age" class="age" data-icon="" >您的年龄</label>
                                    <input id="age" name="age" required="required" type="text" placeholder="请输入年龄"/> 
                                </p>
                                <p>
									<label for="sexsignup" class="uname" data-icon="">请选择性别</label>
									<br> 男<input type="radio" id="radio" name="sex"value="男" checked="checked" />
									 女<input type="radio"id="radio" name="sex" value="女" />
								</p>
								<p class="signin button">
									<input type="submit" value="Sign up" />
								</p>
								<p class="change_link">
								已经是大家庭的一员了？ <a href="<%=basePath%>login.jsp" class="to_register">参与年夜饭 </a>
								</p>
							</form>
						</div>


					</div>
			</div>
			</section>

		</div>


	</div>
	</div>
	<script src="static/xingkong/js/TweenLite.min.js"></script>
	<script src="static/xingkong/js/EasePack.min.js"></script>
	<script src="static/xingkong/js/demo-1.js"></script>

</body>
</html>