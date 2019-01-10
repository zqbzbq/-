<%@ page language="java" import="java.util.*,com.rjxy.fitness.entity.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>意见反馈</title>
<!---css--->
<link href="<%=basePath %>static/fitness/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="<%=basePath %>static/fitness/css/style.css" rel='stylesheet' type='text/css' />
<!---css--->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!---js--->
<script src="<%=basePath %>static/fitness/js/jquery-1.11.1.min.js"></script>
<script src="<%=basePath %>static/fitness/js/bootstrap.js"></script>
<!---js--->
<!--web-fonts-->
<link href='https://fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//web-fonts-->
<!--JS for animate-->
	<link href="<%=basePath %>static/fitness/css/animate.css" rel="stylesheet" type="text/css" media="all">
	<script src="<%=basePath %>static/fitness/js/wow.min.js"></script>
		<script>
			new WOW().init();
		</script>
	<!--//end-animate-->

</head>
<body>
<!---header--->
	<nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header wow fadeInLeft animated animated" data-wow-delay="0.4s">
          
          <h1><a class="navbar-brand" href="<%=basePath %>index.jsp"><img src="<%=basePath %>static/fitness/images/e.png"/>Sport Fitness Gym </a></h1>
        </div>
         <div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right wow fadeInRight animated animated" data-wow-delay="0.4s">
				<li class="active"><a class="nav-in" href="<%=basePath %>opinion/getallopinion.do?currentPage=1&rows=5 "><span data-letters="欢迎">主页</span></a></li>
				<li ><a class="nav-in" href="<%=basePath %>about.jsp"><span data-letters="来到">关于我们</span></a> </li>
				<li><a class="nav-in" href="<%=basePath %>classanduser/getallclasses.do?currentPage=1&rows=5"><span data-letters="斯跑特">课程</span></a></li>
				<li><a class="nav-in" href="<%=basePath %>backend/getalltrains1.do?currentPage=1&rows=5"><span data-letters="瑜伽">教练</span></a></li>
				<li><a class="nav-in" href="<%=basePath %>fitnessUser/main.do"><span data-letters="健身">会员中心</span></a></li>
				<li><a class="nav-in" href="<%=basePath %>contact.jsp"><span data-letters="社交">意见反馈</span></a></li>
				<% 
				HttpSession sess=request.getSession(false);
				if(sess==null || sess.getAttribute("loginUser")==null){ %>
					<li><a class="nav-in" href="<%=basePath %>login.jsp"><span data-letters="登录">登录</span></a></li>	
			<% }else{ %>
			<li><a class="nav-in" href="javascript:;"><span data-letters="欢迎">欢迎：</span></a></li>
					  <li><a class="nav-in" href="javascript:;"> <span data-letters="${loginUser.userid }">
		   ${loginUser.userid } 
					
					 <li><a class="nav-in" href="<%=basePath %>fitnessUser/logout.do"><span data-letters="网站">退出</span></a></li>
			<% }%>
				
				
				
		   </span></a></li>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
<!---banner--->
			<div class="banner wow fadeInDownBig animated animated" data-wow-delay="0.4s">
				<div class="container">
					<h2>意见反馈</h2>
				</div>
			</div>
	<div class="contact w3l">
		<div class="map wow fadeInUpBig animated animated" data-wow-delay="0.4s">
			<iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d2482.432383990807!2d0.028213999961443994!3d51.52362882484525!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1423469959819"></iframe>
		</div>
		<div class="map-grids w3-agile">
			<div class="col-md-8 map-middle wow fadeInRight animated animated" data-wow-delay="0.4s">
				<form action="<%=basePath %>fitnessUser/addopinion.do" method="post" name="opinion1">
				
										<input type="text" name="username" id="username" placeholder="您的姓名/昵称" required="">
										<input type="text" name="tel" class="phone" placeholder="联系方式" required="">							
										<textarea name="content" placeholder="您的建议" required=""></textarea>
										<input type="submit" value="提交">
									</form>
			</div>
			<div class="col-md-4 map-left wow fadeInLeft animated animated" data-wow-delay="0.4s">
				<h4>地址</h4>
				<ul>
					<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i> 座机 : 0000-218xxxx</li>
					<li><i class="glyphicon glyphicon-phone" aria-hidden="true"></i> 电话: 130xxxxxxxx</li>
					<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i> <a href="#"><a href="mailto:info@example.com">707976215@qq.com</a></a></li>
					<li><i class="glyphicon glyphicon-print" aria-hidden="true"></i> 传真 : 0091-789-456100</li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
<!-- //map -->
<div class="footer-section">
		<div class="container">
			<div class="footer-grids">
				
				
			
			
				<div class="clearfix"></div>
			</div>
		</div>
	</div>	
	<!---footer--->
	<!--copy-->
	<div class="copy-section wow fadeInDownBig animated animated" data-wow-delay="0.4s">
		<div class="container">
    <p>2018@山西农业大学——张沁炳 <a href="http://www.tmooc.cn/" target="_blank" title="达内">达内</a>  <a href="" target="_blank"></a></p>
		</div>
	</div>
	<!--copy-->
	<!--copy-->
</body>
</html>