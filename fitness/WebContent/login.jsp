<%@ page language="java" import="java.util.*,com.rjxy.fitness.entity.*"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<!--<![endif]-->
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
<title>欢迎您登录斯跑特瑜伽健身网站</title>
<script src="static/register/jquery/jquery-2.1.4.min.js"></script>
<link rel="stylesheet" type="text/css" href="static/login/css/demo.css" />
<link rel="stylesheet" type="text/css" href="static/login/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="static/login/css/animate-custom.css" />
</head>
<body>


	<div class="container demo-1">
		<div class="content">
			<div id="large-header" class="large-header"
				style="position: absolute; float: left;">
				<canvas id="demo-canvas"> </canvas>

			</div>
			<div class="container"
				style="float: left; position: relative; left: 1%; margin-top: 9%;">
				<header> </header>
				<section>
				<div id="container_demo">


					<div id="wrapper">
						<div id="login" class="animate form">
						<p style="color:red"> ${msg } </p><hr>
							<form action="<%=basePath%>fitnessUser/login.do" method="post">
								<h1>欢迎您</h1>
								<p>
									<label for="username" class="uname" data-icon="u">您的用户名</label>
									<input id="username" name="userid" required="required"
										type="text" placeholder="请输入用户名" />

								</p>
								<p>
									<label for="password" class="youpasswd" data-icon="p">密码</label>
									<input id="password" name="password" required="required"
										type="password" placeholder="请输入密码" />
								</p>

								<p class="login button">
									<input type="submit" value="Login" />
								</p>
								<p class="change_link">
									想成为我们的一员？赶快来吧！ <a href="<%=basePath%>register.jsp"
										class="to_register">我要变强</a><br /> 注册教练 <a
										href="<%=basePath%>register_jiaolian.jsp" class="to_register">我是教练</a>
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