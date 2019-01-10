<%@ page language="java" import="java.util.*,com.rjxy.fitness.entity.*"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<title>SportFitness | 个人信息</title>

<link href="<%=basePath%>static/fitness/css/bootstrap.css"
	rel='stylesheet' type='text/css' />
<link href="<%=basePath%>static/fitness/css/style.css" rel='stylesheet'
	type='text/css' />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="<%=basePath%>static/plugins/amaze/css/amazeui.min.css">
<link rel="stylesheet" href="<%=basePath%>static/plugins/amaze/css/admin.css">
<link rel="stylesheet"
	href="<%=basePath%>static/plugins/contextjs/css/context.standalone.css">
<script src="<%=basePath%>static/plugins/jquery/jquery-2.1.4.min.js"></script>
<script src="<%=basePath%>static/plugins/amaze/js/amazeui.min.js"></script>
<script src="<%=basePath%>static/plugins/amaze/js/app.js"></script>
<script src="<%=basePath%>static/plugins/layer/layer.js"></script>
<script src="<%=basePath%>static/plugins/laypage/laypage.js"></script>
<script src="<%=basePath%>static/plugins/contextjs/js/context.js"></script>

<!---css--->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!---js--->
<script src="<%=basePath%>static/fitness/js/jquery-1.11.1.min.js"></script>
<script src="<%=basePath%>static/fitness/js/bootstrap.js"></script>
<!---js--->

<!--web-fonts-->
<link href='https://fonts.googleapis.com/css?family=Ubuntu+Condensed'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic'
	rel='stylesheet' type='text/css'>
<!--//web-fonts-->
<!--JS for animate-->
<link href="<%=basePath%>static/fitness/css/animate.css"
	rel="stylesheet" type="text/css" media="all">
<script src="<%=basePath%>static/fitness/js/wow.min.js"></script>
<script>
	new WOW().init();
</script>
<!--//end-animate-->

</head>
<body>
	<header class="am-topbar admin-header">
	<div class="am-topbar-brand">
		<i class="am-icon-weixin"></i> <strong>SportFitness</strong> <small>网页聊天室</small>
	</div>
	<button
		class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
		data-am-collapse="{target: '#topbar-collapse'}">
		<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
	</button>
	<div class="am-collapse am-topbar-collapse" id="topbar-collapse">
		<ul
			class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
			<li class="am-dropdown" data-am-dropdown><a
				class="am-dropdown-toggle" data-am-dropdown-toggle
				href="javascript:;"> ${loginUser.nickname } <span
					class="am-icon-caret-down"></span>
			</a>
				<ul class="am-dropdown-content">
					<li><a href="<%=basePath%>information.jsp"><span
							class="am-icon-user"></span> 资料</a></li>
					<li><a href="<%=basePath%>info-setting.jsp"><span
							class="am-icon-cog"></span> 设置</a></li>
					<li><a href="<%=basePath%>fitnessUser/logout.do"><span
							class="am-icon-power-off"></span> 注销</a></li>
				</ul></li>
		</ul>
	</div>
	</header>
	<div class="am-cf admin-main">
		<!-- sidebar start -->
		<div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
			<div class="am-offcanvas-bar admin-offcanvas-bar"
				style="padding-top: 30px">
				<ul class="am-list admin-sidebar-list">
					<li><a href="<%=basePath%>fitnessUser/main.do"><span
							class="am-icon-commenting"></span> 聊天</a></li>
					<li><a href="<%=basePath%>information.jsp" class="am-cf"><span
							class="am-icon-book"></span> 个人信息<span
							class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
					<li class="admin-parent"><a class="am-cf"
						data-am-collapse="{target: '#collapse-nav'}"><span
							class="am-icon-cogs"></span> 设置 <span
							class="am-icon-angle-right am-fr am-margin-right"></span></a>
						<ul class="am-list am-collapse admin-sidebar-sub am-in"
							id="collapse-nav">
							<li><a href="<%=basePath%>info-setting.jsp"><span
									class="am-icon-group"></span> 个人设置</a></li>
							<li><a href="<%=basePath%>fitnessUser/getallspace.do?currentPage=1&rows=5&spaceid=${loginUser.id}"><span
									class="am-icon-cog"></span>心情动态</a></li>
						</ul></li>
					<li><a href="<%=basePath%>space/getallspace.do?currentPage=1&rows=5"><span
							class="am-icon-globe"></span>好友动态</a></li>
					 <li><a href="<%=basePath %>fitnessUser/selectnotfriends.do?currentPage=1&rows=5"><span class="am-icon-globe"></span>添加好友</a></li> 
					<li><a href="<%=basePath%>fitnessUser/logout.do"><span
							class="am-icon-sign-out"></span> 注销</a></li>
				</ul>
				<!-- style="margin-top:245px;margin-right:0px;margin-left:0px;border:0px; -->
				<div class="am-panel am-panel-default admin-sidebar-panel">
					<div class="am-panel-bd"
						style="background-color:; margin-top: 30px; height: 200px">
						<p>
							<span class="am-icon-tag"
								style="padding-left: 23px; padding-top: 40px;"></span> Welcome
						</p>
						<span class="am-icon-tag" style="padding-left: 33px"></span>欢迎使用SportFitness聊天室~

					</div>
				</div>
			</div>
		</div>

		<!-- sidebar end -->

		<!-- content start -->
		<div class="admin-content">
			<div class="am-cf am-padding"
				style="height: 60px; margin-top: 30px; margin-bottom: 0px;">
				<div class="am-fl am-cf">
					<strong class="am-text-primary am-text-lg">个人信息</strong> <small></small>
				</div>
			</div>
			<div class="am-tabs am-margin" data-am-tabs
				style="height: 50px; margin-top: 35px; margin-bottom: 0px;">
				<ul class="am-tabs-nav am-nav am-nav-tabs">
					<li class="am-active"><a href="#tab1">个人信息</a></li>
				</ul>
				<div class="am-tabs-bd">
					<div class="am-tab-panel am-fade am-in am-active" id="tab1">
						<div class="am-g">
							<div class="am-u-md-3">
								<b>昵称:</b>
							</div>
							<div class="am-u-md-3">${loginUser.nickname}</div>

							<div class="am-u-md-6" style="float: right">
								
								<img class="am-circle" src="<%=basePath%>${loginUser.profilehead}"
									width="140" height="140" alt="" /> 
							
							<h3></h3>
  <%-- <img src="<%=basePath%>${loginUser.profilehead}"> --%>
  <hr>
							
							</div>

							<div class="am-u-md-3">
								<b>性别:</b>
							</div>
							<div class="am-u-md-3">${loginUser.sex}</div>

							<div class="am-u-md-3"">
								<b>注册日期:</b>
							</div>
							<div class="am-u-md-3">
								<fmt:formatDate value="${loginUser.lasttime}"
									pattern="yyyy-MM-dd" />
							</div>
							<div class="am-u-md-3">
								<b>简介:</b>
							</div>
							<div class="am-u-md-3">${loginUser.profile }</div>

							<div class="am-u-md-3">
								<b>预定课程</b>
							</div>
							<div class="am-u-md-3">${loginUser.orderclass }</div>

												</div>
					</div>
				</div>
				<!-- content end -->
			</div>

		</div>

	</div>
	<!--typo-ends-->
	<div class="footer-section" id="footer-section"
		style="background-color: 158FD1">
		<!-- 158FD1 -->
	
		<div class="container">
			<div class="footer-grids">
				
				<div class="col-md-3 footer-grid wow fadeInLeft animated animated"
					data-wow-delay="0.4s">
					<h4>合作伙伴</h4>
					<ul>
						<li><a href=https://www.jianshen8.com/yingyang/shipu/>饮食搭配</li>
						<li><a href=https://market.m.taobao.com/apps/abs/10/363/f89efd?spm=a21bo.2017.201867-main.19.5af911d9QKlmb6&wh_weex=true&data_prefetch=true&wx_navbar_transparent=true&psId=1378008>健身器材</li>			
						<li><a href=https://market.m.taobao.com/apps/abs/10/363/f89efd?spm=a21bo.2017.201867-main.19.5af911d9QKlmb6&wh_weex=true&data_prefetch=true&wx_navbar_transparent=true&psId=1378008>购物</li>
						<li><a href="<%=basePath%>contact.jsp">投诉</li>
					</ul>
				</div>
			
				<div class="col-md-3 footer-grid wow fadeInRight animated animated"
					data-wow-delay="0.4s">
					<h4>我们</h4>
					<p>北京市海淀区98号</p>
					<p></p>
					<p>手机: 15835481516</p>
				
					<p>邮箱：707976215@qq.com</p>
					<a href="mailto:example@mail.com"> </a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!---footer--->
	<!--copy-->
	<div class="copy-section wow fadeInDownBig animated animated"
		data-wow-delay="0.4s">
		<div class="container">
			<p>
				2018@山西农业大学——张沁炳 <a href="http://www.tmooc.cn/" target="_blank"
					title="达内精品">达内精品</a> <a href="" target="_blank"></a>
			</p>
		</div>
	</div>
	<!--copy-->


</body>
</html>
