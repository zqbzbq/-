<%@ page language="java" import="java.util.*,com.rjxy.fitness.entity.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
<head>
<title>关于我们</title>
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
<!--JS for animate-->
	<link href="<%=basePath%>static/fitness/css/animate.css" rel="stylesheet" type="text/css" media="all">
	<script src="<%=basePath%>static/fitness/js/wow.min.js"></script>
		<script>
			new WOW().init();
		</script>
	<!--//end-animate-->
	
<!-- <script>
function openVideo(src) {
var page = window.open();
var html="<body style='background:black'>
<div style='width:80%;margin:auto;'>
<video controls width='100%' autoplay src='"+src+ "'></video>
</div>
</body>"
page.document.write(html);
}
</script> -->

	
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
				<li class="active"><a class="nav-in" href="<%=basePath %>opinion/getallopinion.do?currentPage=1&rows=5 ""><span data-letters="欢迎">主页</span></a></li>
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
					<!-- 由于当前项目是虚拟主机的默认web应用，因此项目映射的URL应该是“” -->
					<!-- <a href="/EasyMall/regist.jsp">注册</a> -->
					 <li><a class="nav-in" href="<%=basePath %>fitnessUser/logout.do"><span data-letters="网站">退出</span></a></li>
			<% }%>
				
				
				
		   </span></a></li>        </div><!--/.nav-collapse -->
      </div>
    </nav>
<!---banner--->
			<div class="banner wow fadeInDownBig animated animated" data-wow-delay="0.4s">
				<div class="container">
					<h2>关于我们</h2>
				</div>
			</div>
		<!---about-->
			<div class="about-section w3-layouts">
				<div class="container">
					<div class="about-grids">					
						<div class="clearfix">
			<h2 align="center">课程视屏查看</h2>
			<br>
			<div class="table">
				<table align="center">
					<thead>
						<tr>						
							<th class="bg"></th>
							<th><strong></strong></th>
							<th class="bg"><strong></strong></th>
							<th><strong></strong></th>
							<th class="bg"><strong></strong></th>
							<th><strong></strong></th>
							<th class="bg"><strong></strong></th>
							
						</tr>
					</thead>
					<tbody>
						<tr>						
				            <td class="bg"><strong><br>瑜伽房</strong></td>
							<td><a target="_blank" href=http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803>纤体瑜伽</a></td>
							<td class="bg"><a target="_blank" href=http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803>没用动力怎么办？</a></td>
							<td><a target="_blank" href=http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803>力量瑜伽</a></td>
							<td class="bg"><a target="_blank" href=http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803>调理瑜伽</a></td>
							<td><a target="_blank" href=http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803>流瑜伽</a></td>
							<td class="bg"><a target="_blank" href="http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803">阴瑜伽</a></td>
							
						</tr>
						<tr>
							<td class="bg2"><strong><br/>力量区</strong></td>
							<td class="bg"><a target="_blank" href="http://www.iqiyi.com/w_19rr1j3u2l.html">胸部教学</a></td>
							<td class="bg2"><a target="_blank" href="http://www.iqiyi.com/w_19rr1j3u2l.html">腿部训练</a></td>
							<td class="bg"><a target="_blank" href="http://www.iqiyi.com/w_19rr1j3u2l.html">手臂教学</a></td>
							<td class="bg2"><a target="_blank" href="http://www.iqiyi.com/w_19rr1j3u2l.html">肩部教学</a></td>
							<td class="bg"><a target="_blank" href="http://www.iqiyi.com/w_19rr1j3u2l.html">腹部教学</a></td>
							<td class="bg2"><a target="_blank" href="http://www.iqiyi.com/w_19rr1j3u2l.html">背部教学</a></td>
							
						</tr>
						
						<tr>
							<td class="bg"><strong></br>有氧</strong></td>
							<td><a target="_blank" href="http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803">动感单车(阳光海岸)</a></td>
							<td class="bg"><a target="_blank" href="http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803">跑步机</a></td>
							<td><a target="_blank" href="http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803">动感单车(极限冲刺)</a></td>
							<td class="bg"><a target="_blank" href="http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803">椭圆机</a></td>
							<td><a target="_blank" href="http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803">动感单车(狂欢之夜)</a></td>
							<td class="bg"><a target="_blank" href="http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803">楼梯机</a></td>
							
						</tr>
						
						<tr>
							<td class="bg"><strong></br>舞蹈房</strong></td>
							<td><a target="_blank" href="http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803">肚皮舞</a></td>
							<td class="bg"><a target="_blank" href="http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803">爵士拉丁</a></td>
							<td><a target="_blank" href="http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803">民族舞</a></td>
							<td class="bg"><a target="_blank" href="http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803">恰恰舞</a></td>
							<td><a target="_blank" href="#">芭蕾</a></td>
							<td class="bg"><a target="_blank" href="http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803">东方舞</a></td>
							
						</tr>
						<tr>
							<td class="bg2"><strong></br>操房</strong></td>
							<td class="bg"><a target="_blank" href="http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803">拳击</a></td>
							<td class="bg2"><a target="_blank" href="http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803">搏击操</a></td>
							<td class="bg"><a target="_blank" href="http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803">散打</a></td>
							<td class="bg2"><a target="_blank" href="http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803">跆拳道</a></td>
							<td class="bg"><a target="_blank" href="http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803">泰拳</a></td>
							<td class="bg2"><a target="_blank" href="http://tts.tmooc.cn/video/showVideo?menuId=632256&version=BIGTN201803">空手道</a></td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>			
						


</a>
		
						
						</div>
					</div>
				</div>
			</div>
			<div class="gym-product w3-agile">
				<div class="container">
					<h3>健身产品</h3>
					<div class="product-grids">
						<div class="col-md-4 product-grid wow fadeInRight animated animated" data-wow-delay="0.4s">
							<img src="static/fitness/images/p1.jpg" class="img-responsive" alt=""/>
							<h4>哑铃 </h4>
							<p>哑铃是很简单的运动器械. </p>
						</div>
						<div class="col-md-4 product-grid wow fadeInUpBig animated animated" data-wow-delay="0.4s">
							<img src="static/fitness/images/p2.jpg" class="img-responsive" alt=""/>
						<h4>俯卧撑支架 </h4>
							<p>更好的锻炼俯卧撑. </p>
						</div>
						<div class="col-md-4 product-grid wow fadeInLeft animated animated" data-wow-delay="0.4s">
							<img src="static/fitness/images/p3.jpg" class="img-responsive" alt=""/>
							<h4>动感单车 </h4>
							<p>随时随地大汗淋漓. </p>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		<!---about-->
<div class="footer-section">
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