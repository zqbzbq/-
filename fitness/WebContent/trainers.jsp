<%@ page language="java" import="java.util.*,com.rjxy.fitness.entity.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>教练——trainers</title>
<!---css--->
<link href="<%=basePath%>static/fitness/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="<%=basePath%>static/fitness/css/style.css" rel='stylesheet' type='text/css' />
<!---css--->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!---js--->
<script src="<%=basePath%>static/fitness/js/jquery-1.11.1.min.js"></script>
<script src="<%=basePath%>static/fitness/js/bootstrap.js"></script>
<!---js--->
<!--web-fonts-->
<link href='https://fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//web-fonts-->
<link href="<%=basePath%>static/fitness/css/galleryeffect.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=basePath%>static/fitness/css/style.css" rel="stylesheet" type="text/css" media="all" />
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
        
         <h1><a class="navbar-brand" href="index.jsp"><img src="static/fitness/images/e.png"/>Sport Fitness Gym </a></h1>
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
					<h2>教练</h2>
				</div>
			</div>
			
			<div class="trainers-section wow bounceIn animated" data-wow-delay="0.4s" style="visibility: visible; -webkit-animation-delay: 0.4s;">
				<div class="container">
				<section>
				<ul class="lb-album">
															
					<c:if test="${page.totalPage>0}">
						<c:forEach items="${page.ftrain}" var="ftrain">
					<li class="grid">
						<a href="backend/gettrains1.do?id=${ftrain.id}" target="_blank">
							<figure class="effect-apollo">
								<img src="<%=basePath%>${ftrain.img}"width="384" height="470" alt="${ftrain.id}"/>
								<figcaption>
								</figcaption>			
							</figure>
						</a>
							<div class="lb-overlay" id="#image-${ftrain.id}">
									<img src="<%=basePath%>${ftrain.img}" width="384" height="470"alt="${ftrain.id}" />
									<div class="gal-info">							
										<h3>${ftrain.trainname }</h3>
										<p>${ftrain.content }<br/>
										${ftrain.trainuser }<>
										</p>
									</div>
									<a href="#" class="lb-close?currentPage=2&rows=5">关闭</a>
							</div>
					</li>
					
				</c:forEach>
						</c:if>	
				
				
				<!-- 分页开始 -->
			<div id="spulist-pager">
				<!-- 分页条1开始 -->
				<div id="spulist-pager">
					<!-- 分页条1开始 -->
					<div class="pager1">
						<span> 【${page.currentPage}/${page.totalPage}】 </span>
						<%--  	<c:if test="${requestScope.page.totalPage>1}"> --%>
						<!-- 第一页情形 -->
						<c:if test="${page.currentPage eq 1}">
							<a
								href="<%=basePath%>backend/getalltrains1.do?currentPage=2&rows=5 ">下一页</a>
							<a
								href="<%=basePath%>backend/getalltrains1.do?currentPage=${page.totalPage}&rows=5 ">尾页</a>
						</c:if>
						<!-- 非第一页也非最后一页-->
						<c:if
							test="${page.currentPage>1 and page.currentPage<page.totalPage}">
							<a
								href="<%=basePath%>backend/getalltrains1.do?currentPage=1&rows=5">首页</a>
							<a
								href="<%=basePath%>backend/getalltrains1.do?currentPage=${page.currentPage-1}&rows=5">上一页</a>
							<a
								href="<%=basePath%>backend/getalltrains1.do?currentPage=${page.currentPage+1 }&rows=5 ">下一页</a>
							<a
								href="<%=basePath%>backend/getalltrains1.do?currentPage=${page.totalPage}&rows=5 ">尾页</a>
						</c:if>
						<!-- 最后一页情形 -->
						<c:if test="${page.currentPage==page.totalPage}">
							<a
								href="<%=basePath%>backend/getalltrains1.do?currentPage=1&rows=5 ">首页</a>
							<a
								href="<%=basePath%>backend/getalltrains1.do?currentPage=${page.currentPage-1}&rows=5 ">上一页</a>
						</c:if>
					</div>
					<!-- 分页条1结束 -->
				</div>			
			</div>	
				
					
				</ul>
			</section>

		</div>
	</div>
<!-- //gallery -->
<div class="footer-section">
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
	<div class="copy-section wow fadeInDownBig animated animated" data-wow-delay="0.4s">
		<div class="container">
	<p>2018@山西农业大学——张沁炳 <a href="http://www.tmooc.cn/" target="_blank" title="达内精品">达内精品</a>  <a href="" target="_blank"></a></p>
		</div>
	</div>
	
	<!--copy-->
</body>
</html>