<%@ page language="java" import="java.util.*,com.rjxy.fitness.entity.*"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Classes</title>
<!---css--->
<%-- <link href="<%=basePath %>backend/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="<%=basePath %>backend/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="<%=basePath %>backend/js/bootstrap.min.js"></script> --%>
<link href="<%=basePath%>static/fitness/css/bootstrap.css"
	rel='stylesheet' type='text/css' />
<link href="<%=basePath%>static/fitness/css/style.css" rel='stylesheet'
	type='text/css' />
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
	<!---header--->
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header wow fadeInLeft animated animated"
			data-wow-delay="0.4s">

			<h1>
				<a class="navbar-brand" href="index.jsp"><img
					src="<%=basePath%>static/fitness/images/e.png" />Sport Fitness
					Gym </a>
			</h1>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul
				class="nav navbar-nav navbar-right wow fadeInRight animated animated"
				data-wow-delay="0.4s">
				<li class="active"><a class="nav-in"
					href="<%=basePath%>opinion/getallopinion.do?currentPage=1&rows=5 "><span
						data-letters="欢迎">主页</span></a></li>
				<li><a class="nav-in" href="<%=basePath%>about.jsp"><span
						data-letters="来到">关于我们</span></a></li>
				<li><a class="nav-in"
					href="<%=basePath%>classanduser/getallclasses.do?currentPage=1&rows=5"><span
						data-letters="斯跑特">课程</span></a></li>
				<li><a class="nav-in"
					href="<%=basePath%>backend/getalltrains1.do?currentPage=1&rows=5"><span
						data-letters="瑜伽">教练</span></a></li>
				<li><a class="nav-in" href="<%=basePath%>fitnessUser/main.do"><span
						data-letters="健身">会员中心</span></a></li>
				<li><a class="nav-in" href="<%=basePath%>contact.jsp"><span
						data-letters="社交">意见反馈</span></a></li>
				<%
					HttpSession sess = request.getSession(false);
					if (sess == null || sess.getAttribute("loginUser") == null) {
				%>
				<li><a class="nav-in"
					href="<%=basePath %>login.jsp"><span
						data-letters="登录">登录</span></a></li>
				<%
					} else {
				%>
				<li><a class="nav-in" href="javascript:;"><span
						data-letters="欢迎">欢迎：</span></a></li>
				<li><a class="nav-in" href="javascript:;"> <span
						data-letters="${loginUser.userid }"> ${loginUser.userid } <!-- 由于当前项目是虚拟主机的默认web应用，因此项目映射的URL应该是“” -->
							<!-- <a href="/EasyMall/regist.jsp">注册</a> -->
							<li><a class="nav-in"
								href="<%=basePath%>fitnessUser/logout.do"><span
									data-letters="网站">退出</span></a></li> <%
 	}
 %>

					</span></a></li>
		</div>
		<!--/.nav-collapse -->
	</div>
	</nav>
	<!---banner--->
	<div class="banner wow fadeInDownBig animated animated"
		data-wow-delay="0.4s">
		<div class="container">
			<h2>课程</h2>
		</div>
	</div>
	<!---banner--->

	<!---class--->
	<div class="class">
		<div class="container">
			<div class="class-grids w3l">
				<div class="col-md-8 class-grid wow fadeInLeft animated animated"
					data-wow-delay="0.4s">
					<div class="class-top">
						<div class="col-md-6 class-left">
							<img src="<%=basePath%>static/fitness/images/c1.jpg"
								class="img-responsive" alt="" />
							<div class="class-text  hvr-bounce-to-bottom" width="480">
								<h4 aligin="center">哑铃 器械指导</h4>
								<p>哑铃肩上推举</p>
								<h5>目标部位：肩部、上胸部</h5>
								<p>坐姿立姿均可，两腿分开踏于地面，躯干保持挺直。两手各握一哑铃，掌心向前，肘部弯曲成90度。发力将哑铃举至头顶。控制哑铃慢慢还原至初始位置。</p>
								<h5>注意事项:</h5>
								<p>小重量, 多组次</p>
							</div>
						</div>
						<div class="col-md-6 class-right">
							<img src="<%=basePath%>static/fitness/images/c2.jpg"
								class="img-responsive" alt="" />
							<div class="class-text hvr-bounce-to-bottom">
								<h4>哑铃 器械指导</h4>
								<p>俯身哑铃单臂屈伸</p>
								<h5>目标部位：肩部</h5>
								<p>俯身，左手撑于凳面或硬板床的边沿，左膝跪于凳面，右腿微弯支撑身体，上身与地面平行，右手握一哑铃，上臂贴于体侧，小臂自然下垂。保持上臂不动，慢慢伸直肘关节，使哑铃上升至身体侧后方。然后慢慢将哑铃还原至初始位置。重复完指定次数后，换另一侧做。</p>
								<h5>注意事项:</h5>
								<p>每组12~15次，共三组</p>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="class-top top2 w3l-agile">
						<div class="col-md-6 class-left">
							<img src="<%=basePath%>static/fitness/images/c3.jpg"
								class="img-responsive" alt="" />
							<div class="class-text hvr-bounce-to-bottom">
								<h4>器械锻炼</h4>
								<h5>蝴蝶机</h5>
								<p>
									蝴蝶机是进行飞鸟夹胸时所使用的一种机械。主要锻炼胸大肌为主的胸部诸肌，初级使用者多会背部紧贴座椅，以便用力；较有经验的用者则会背部离椅，同时锻炼腹部肌肉。</p>
								<p>
									第一步：根据自己的身高调整坐垫位置。 <br />第二步：选择适合自己的配重。 <br />第三步：挺胸收腹，双手握住把手，圆弧式向胸前推，每次推出后，配重片不要完全落下。重复运动。
								</p>
								<h5>注意事项:</h5>
								<p>
									此项运动为力量型健身器材，健身前要做热身运动，活动手臂和肩膀，否则容易造成肌肉拉伤，肌肉酸痛。 <br />根据自己的力量选择配重，不能强求大配重，容易造成肌肉拉伤，要循序渐进的锻炼。
								</p>
							</div>
						</div>
						<div class="col-md-6 class-right">
							<img src="<%=basePath%>static/fitness/images/c5.jpg"
								class="img-responsive" alt="" />
							<div class="class-text hvr-bounce-to-bottom">
								<h4>有氧锻炼</h4>
								<p>舞蹈、跑步、动感单车、椭圆机等</p>
								<h5>白领健身操</h5>
								<h5>头发头皮的按摩</h5>
								<p>白领们脑力消耗特别大，根据中医理论脑为“君主之官，神明出焉”以及解剖上头皮与大脑间血行交通关系密切。采用木梳或手指作梳子，从前额向脑后“梳头”左、中、右各十次。必须让梳子轻轻触及头皮，这样做不但对头发头皮有按摩保护作用，而且对大脑皮质有轻微刺激，促进脑壳内外的血液循环，从而达到提高大脑工作效率的目的。</p>

							</div>
						</div>


					</div>

					<div class="register"></div>

					<div class="clearfix"></div>

				</div>

			</div>

			<div class="col-md-4 class-grid1 wow fadeInRight animated animated"
				data-wow-delay="0.4s">
				<div class="recent-top w3l">

					<c:if test="${page.totalPage>0}">
						<h4>最近课程</h4>
						<c:forEach items="${page.fclass}" var="fclass">
							<div class="recent-class">
								<div class="recent-right">
									<h5>${fclass.classname }</h5>
									<p>
										<strong>教练</strong> ${fclass.shouke }
									</p>
								</div>
								<div class="clearfix"></div>
							</div>
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
										href="<%=basePath%>classanduser/getallclasses.do?currentPage=2&rows=5 ">下一页</a>
									<a
										href="<%=basePath%>classanduser/getallclasses.do?currentPage=${page.totalPage}&rows=5 ">尾页</a>
								</c:if>
								<!-- 非第一页也非最后一页-->
								<c:if
									test="${page.currentPage>1 and page.currentPage<page.totalPage}">
									<a
										href="<%=basePath%>classanduser/getallclasses.do?currentPage=1&rows=5">首页</a>
									<a
										href="<%=basePath%>classanduser/getallclasses.do?currentPage=${page.currentPage-1}&rows=5">上一页</a>
									<a
										href="<%=basePath%>classanduser/getallclasses.do?currentPage=${page.currentPage+1 }&rows=5 ">下一页</a>
									<a
										href="<%=basePath%>classanduser/getallclasses.do?currentPage=${page.totalPage}&rows=5 ">尾页</a>
								</c:if>
								<!-- 最后一页情形 -->
								<c:if test="${page.currentPage==page.totalPage}">
									<a
										href="<%=basePath%>classanduser/getallclasses.do?currentPage=1&rows=5 ">首页</a>
									<a
										href="<%=basePath%>classanduser/getallclasses.do?currentPage=${page.currentPage-1}&rows=5 ">上一页</a>
								</c:if>
							</div>
							<!-- 分页条1结束 -->
						</div>
					</div>
				</div>

				<div class="more-class">
					<img src="<%=basePath%>static/fitness/images/p4.jpg"
						class="img-responsive" alt="" />
				</div>
				<div class="more-class">
					<img src="<%=basePath%>static/fitness/images/p5.jpg"
						class="img-responsive" alt="" />
				</div>


			</div>


			<div class="clearfix">
				<!-- 为了布局完美 -->
			</div>

			<br>
			<h2 align="center">课程表预览</h2>
			<br>
			<!-- 表格  -->
			<div class="row">
				<div class="col-md-12">
					<table class="table table-hover">
						<tr>
							<th>课程号</th>
							<th>课程名</th>
							<!-- <th>内容</th> -->
							<th>时间</th>
							<th>授课人</th>
						</tr>
						<c:if test="${page.totalPage>0}">
							<c:forEach items="${page.fclass}" var="fclass">
								<tr>
									<td>${fclass.id}</td>
									<td>${fclass.classname }</td>
									<%-- <td>${fclass.content }</td> --%>
									<td>${fclass.times }</td>
									<td>${fclass.shouke }</td>

									<td><a type="button" href="getclasses.do?id=${fclass.id}"
										target="_blank" class="btn btn-info btn-sm"> <span
											class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
											查看课程详情
									</a></td>
								</tr>
							</c:forEach>
						</c:if>
					</table>
				</div>
				<!-- 分页开始 -->
				<div id="spulist-pager">
					<!-- 分页条1开始 -->
					<div id="spulist-pager">
						<!-- 分页条1开始 -->
						<div class="pager1">
							<span> 【${page.currentPage}/${page.totalPage}】 </span>
							<c:if test="${requestScope.page.totalPage>1}">
								<!-- 第一页情形 -->
								<c:if test="${page.currentPage eq 1}">
									<a
										href="<%=basePath%>classanduser/getallclasses.do?currentPage=2&rows=5 ">下一页</a>
									<a
										href="<%=basePath%>classanduser/getallclasses.do?currentPage=${page.totalPage}&rows=5 ">尾页</a>
								</c:if>
								<!-- 非第一页也非最后一页-->
								<c:if
									test="${page.currentPage>1 and page.currentPage<page.totalPage}">
									<a
										href="<%=basePath%>classanduser/getallclasses.do?currentPage=1&rows=5">首页</a>
									<a
										href="<%=basePath%>classanduser/getallclasses.do?currentPage=${page.currentPage-1}&rows=5">上一页</a>
									<a
										href="<%=basePath%>classanduser/getallclasses.do?currentPage=${page.currentPage+1 }&rows=5 ">下一页</a>
									<a
										href="<%=basePath%>classanduser/getallclasses.do?currentPage=${page.totalPage}&rows=5 ">尾页</a>
								</c:if>
								<!-- 最后一页情形 -->
								<c:if test="${page.currentPage==page.totalPage}">
									<a
										href="<%=basePath%>classanduser/getallclasses.do?currentPage=1&rows=5 ">首页</a>
									<a
										href="<%=basePath%>classanduser/getallclasses.do?currentPage=${page.currentPage-1}&rows=5 ">上一页</a>
								</c:if>
							</c:if>
						</div>
						<!-- 分页条1结束 -->
					</div>
				</div>
			</div>
			<div class="register">
				<h3>预定课程</h3>
				<h5>尊敬的用户您好，为了您的健康，只允许预定一节课程</h5>
				<form action="<%=basePath%>fitnessUser/updateuserclass.do"
					method="post">
					<select name="oclass">
						<c:forEach items="${page.fclass}" var="fclass">
							<option value="${fclass.classname }">${fclass.classname }</option>
							<!-- <option value="普拉提">普拉提</option>
			<option value="力量瑜伽">力量瑜伽</option>
			<option value="调理瑜伽">调理瑜伽</option>
			<option value="流瑜伽">流瑜伽</option>
			<option value="阴瑜伽">阴瑜伽</option>
			<option value="动感单车(阳光海岸)">动感单车(阳光海岸)</option>
			<option value="跑步机">跑步机</option>
			<option value="动感单车(极限冲刺)">动感单车(极限冲刺)</option>
			<option value="椭圆机">椭圆机</option>
			<option value="动感单车(狂欢之夜)">动感单车(狂欢之夜)</option>
			<option value="楼梯机">楼梯机</option>
			<option value="动感单车(翻山越岭)">动感单车(翻山越岭)</option>
			<option value="肚皮舞">肚皮舞</option>
			<option value="爵士拉丁">爵士拉丁</option>
			<option value="名族舞">名族舞</option>
			<option value="恰恰舞">恰恰舞</option>
			<option value="芭蕾舞">芭蕾舞</option>
			<option value="东方舞">东方舞</option>
			<option value="身体塑型">身体塑型</option>
			<option value="拳击">拳击</option>
			<option value="搏击操">搏击操</option>
			<option value="散打">散打</option>
			<option value="跆拳道">跆拳道</option>
			<option value="泰拳">泰拳</option>
			<option value="空手道">空手道</option> -->
						</c:forEach>
					</select> <input type="submit" value="提交">
				</form>
			</div>
		</div>

	</div>

	<!---class--->
	<div class="footer-section">
		<div class="container">
			<div class="footer-grids">

				<div class="col-md-3 footer-grid wow fadeInLeft animated animated"
					data-wow-delay="0.4s">
					<h4>合作伙伴</h4>
					<ul>
						<li><a href=https://www.jianshen8.com/yingyang/shipu />饮食搭配</li>
						<li><a
							href=https://market.m.taobao.com/apps/abs/10/363/f89efd?spm=a21bo.2017.201867-main.19.5af911d9QKlmb6&wh_weex=true&data_prefetch=true&wx_navbar_transparent=true&psId=1378008>健身器材</li>
						<li><a
							href=https://market.m.taobao.com/apps/abs/10/363/f89efd?spm=a21bo.2017.201867-main.19.5af911d9QKlmb6&wh_weex=true&data_prefetch=true&wx_navbar_transparent=true&psId=1378008>购物</li>
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