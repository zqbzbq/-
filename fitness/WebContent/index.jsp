<%@ page language="java" import="java.util.*,com.rjxy.fitness.entity.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>斯跑特瑜伽健身社交网站主页</title>
<!---css--->
<link rel="stylesheet"
	href="<%=basePath%>static/plugins/amaze/css/amazeui.min.css">
<link rel="stylesheet"
	href="<%=basePath%>static/plugins/amaze/css/admin.css">
<link href="static/fitness/css/bootstrap.css" rel='stylesheet'
	type='text/css' />
<link href="static/fitness/css/style.css" rel='stylesheet'
	type='text/css' />
<!---css--->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!---js--->
<script src="static/fitness/js/jquery-1.11.1.min.js"></script>
<script src="static/fitness/js/bootstrap.js"></script>
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
<script src="static/fitness/js/responsiveslides.min.js"></script>
<script>
	$(function() {
		$("#slider").responsiveSlides({
			auto : true,
			nav : true,
			speed : 500,
			namespace : "callbacks",
			pager : true,
		});
	});
</script>
<!--JS for animate-->
<link href="static/fitness/css/animate.css" rel="stylesheet"
	type="text/css" media="all">
<script src="static/fitness/js/wow.min.js"></script>
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
				<a class="navbar-brand" href="<%=basePath %>index1.jsp"><img
					src="static/fitness/images/e.png" />Sport Fitness Gym</a>
			</h1>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul
				class="nav navbar-nav navbar-right wow fadeInRight animated animated"
				data-wow-delay="0.4s">
				<li class="active"><a class="nav-in" href="<%=basePath %>opinion/getallopinion.do?currentPage=1&rows=5 "><span
						data-letters="欢迎">主页</span></a></li>
				<li><a class="nav-in" href="<%=basePath %>about.jsp"><span
						data-letters="来到">关于我们</span></a></li>
				<li><a class="nav-in" href="<%=basePath %>classanduser/getallclasses.do?currentPage=1&rows=5"><span
						data-letters="斯跑特">课程</span></a></li>
				<li><a class="nav-in" href="<%=basePath %>backend/getalltrains1.do?currentPage=1&rows=5"><span
						data-letters="瑜伽">教练</span></a></li>
				<li><a class="nav-in" href="<%=basePath %>fitnessUser/main.do"><span
						data-letters="健身">会员中心</span></a></li>
				<li><a class="nav-in" href="<%=basePath %>contact.jsp"><span
						data-letters="社交">意见反馈</span></a></li>

				<%
					HttpSession sess = request.getSession(false);
					if (sess == null || sess.getAttribute("loginUser") == null) {
				%>
				<li><a class="nav-in" href="<%=basePath %>login.jsp"><span
						data-letters="登录">登录</span></a></li>
				<%
					} else {
				%>
				<li><a class="nav-in" href="javascript:;"><span
						data-letters="欢迎">欢迎：</span></a></li>
				<li><a class="nav-in" href="javascript:;"> <span
						data-letters="${loginUser.userid }"> ${loginUser.userid } <!-- 由于当前项目是虚拟主机的默认web应用，因此项目映射的URL应该是“” -->
							<!-- <a href="/EasyMall/regist.jsp">注册</a> -->
							<li><a class="nav-in" href="<%=basePath %>fitnessUser/logout.do"><span
									data-letters="网站">退出</span></a></li> <%
 	}
 %>
					</span></a></li>

			</ul>

		</div>
		<!--/.nav-collapse -->

	</div>
	</nav>

	<script type="text/javascript">
		
	</script>

	<!---banner--->
	<div class="banner-section">
		<div class="container">
			<div class="slider">
				<div class="callbacks_container">
					<ul class="rslides" id="slider">
						<li>
							<div class="caption">
								<div
									class="col-md-6 cap-left wow fadeInDownBig animated animated"
									data-wow-delay="2.0s">
									<p>也许你会坚持一分钟，一小时，或者一天，你最终会平静下来会有别的事情取而代之，然后放弃却会持续很长时间</p>

								</div>
								<div
									class="col-md-6 cap-right wow fadeInUpBig animated animated"
									data-wow-delay="2.0s">
									<h3>疼痛是暂时的，放弃却是永久的.</h3>
								</div>
								<div class="clearfix"></div>
							</div>
						</li>
						<li>
							<div class="caption">
								<div
									class="col-md-6 cap-left wow fadeInDownBig animated animated"
									data-wow-delay="2.0s">
									<p>疼痛可能持续一分钟, 一小时, 或者一天, 但是它最终会减弱 ，其他的东西将会取代它，放弃除外 .</p>

								</div>
								<div
									class="col-md-6 cap-right wow fadeInUpBig animated animated"
									data-wow-delay="2.0s">
									<h3>有志者事竟成</h3>
								</div>
								<div class="clearfix"></div>
							</div>

						</li>
						<li>
							<div class="caption">
								<div
									class="col-md-6 cap-left wow fadeInDownBig animated animated"
									data-wow-delay="2.0s">
									<p>不要在意别人的看法，做到竭尽全力就好</p>

								</div>
								<div
									class="col-md-6 cap-right wow fadeInUpBig animated animated"
									data-wow-delay="2.0s">
									<h3>做事情要循序渐进，一口吃不成胖子.</h3>
								</div>
								<div class="clearfix"></div>
							</div>

						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!---banner--->
	<!---content--->
	<div class="content">
		<!---train--->
		<div class="train w3-agile">
			<div class="container">
				<h2>加入我们的训练吧！</h2>
				<div class="train-grids">
					<div class="col-md-3 train-grid wow fadeInLeft animated animated"
						data-wow-delay="0.4s">
						<div class="train-top hvr-bounce-to-right">
							<div class="train-img">
								<img src="static/fitness/images/e1.png" />
							</div>
							<h4>瑜伽</h4>
							<p>瑜伽（英文：Yoga，印地语：योग）是一个汉语词汇，最早是从印度梵语“yug”或“yuj”而来，其含意为“一致”、“结合”或“和谐”。瑜伽源于古印度，是古印度六大哲学派别中的一系，探寻“梵我合一”的道理与方法。而现代人所称的瑜伽则主要是一系列的修身养心方法。</p>
						</div>
					</div>
					<div
						class="col-md-3 train-grid wow fadeInDownBig animated animated"
						data-wow-delay="0.4s">
						<div class="train-top hvr-bounce-to-right">
							<div class="train-img">
								<img src="static/fitness/images/e2.png" />
							</div>
							<h4>硬拉介绍</h4>
							<p>硬拉是一种负重训练，主要分为屈腿硬拉（DeadLift）和直腿硬拉（Stiff-legged
								DeadLift），还有一些变种诸如罗马尼亚硬拉、相扑硬拉等，屈腿硬拉主要用于锻炼下背部即竖脊肌，直腿硬拉主要锻炼股二头肌，但也涉及臀部肌群、竖脊肌。
								</p>
						</div>
					</div>
					<div class="col-md-3 train-grid wow fadeInUpBig animated animated"
						data-wow-delay="0.4s">
						<div class="train-top hvr-bounce-to-right">
							<div class="train-img">
								<img src="static/fitness/images/e3.png" />
							</div>
							<h4>硬拉力量区</h4>
							<p>
								动作要领：
								<br/>1.双脚呈八字形站立，杠铃放体前，屈膝俯身，双手正握杠铃，握距约与肩宽或宽肩，头稍抬起，挺胸腰背绷紧，翘臀，上体前倾约45度。腿肌用力伸膝提铃，稍停。然后屈膝缓慢下降还原。为提高锻炼效果，屈膝下降杠铃时不让其触及地面
								<br/>2.拉到最高点时，双肩尽量外展，抬头挺胸，停滞3秒钟。还原，重复。
							</p>
						</div>
					</div>
					<div class="col-md-3 train-grid wow fadeInRight animated animated"
						data-wow-delay="0.4s">
						<div class="train-top hvr-bounce-to-right">
							<div class="train-img">
								<img src="static/fitness/images/e4.png" />
							</div>
							<h4>拉伸</h4>
							<p>拉伸是任何人在任何时间、任何地点都可以进行的简单、轻柔的运动！
								通过以正确的方法拉伸，每天只需几分钟，我们就可以伸展肌肉筋腱，舒展骨骼血脉，消除困扰我们的颈、肩、腰等身体部位的紧张酸痛，增强身体柔韧度，还能减肥瘦身。总之，随地随地拉伸好处多！</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="train-grids">
					<div class="col-md-3 train-grid wow fadeInLeft animated animated"
						data-wow-delay="0.4s">
						<div class="train-top hvr-bounce-to-right">
							<div class="train-img">
								<img src="static/fitness/images/e5.png" />
							</div>
							<h4>跑步</h4>
							<p>最佳时间是上午9点到10点和下午4点到6点。前者时空气清新，体内肾上腺皮质激素水平达峰值。而根据生物钟，约4点到6点身体的适应能力及体力的调动发挥最佳。</p>
						</div>
					</div>
					<div
						class="col-md-3 train-grid wow fadeInDownBig animated animated"
						data-wow-delay="0.4s">
						<div class="train-top hvr-bounce-to-right">
							<div class="train-img">
								<img src="static/fitness/images/e6.png" />
							</div>
							<h4>健身器械(一)</h4>
							<p>健身器械的种类很多大概分为：
							<br/>划船器：主要用来增强手臂力量、背阔肌和动作协调能力。
							<br/>体适能运动机：与其他的健身方式不同，用户可以在不同的运动模式和完全零冲击体验下，类似于登楼梯、步行、慢跑和长跑间自由转换。您可以通过这种即时转换模式功能，调整您的训练模式来达到针对特定肌肉群训练的目标。
							</p>
						</div>
					</div>
					<div class="col-md-3 train-grid wow fadeInUpBig animated animated"
						data-wow-delay="0.4s" >
						<div class="train-top hvr-bounce-to-right">
							<div class="train-img">
								<img src="static/fitness/images/e7.png" />
							</div>
							<h4>健身器械(二)</h4>
							<p>
							<br/>跑步机：主要用以锻炼腿、臀、腰、腹部肌肉及心肺功能。 
							<br/>美腰机：可对腰部、背部作放松按摩。
							<br/>综合型多功能器：一般都包括扩胸器、引体向上、仰卧推举、仰卧起坐等器械的功能。扩胸器、引体向上、仰卧推举，主要是用来锻炼上肢力量及胸大肌力量；仰卧起坐，主要用来锻炼腰肌群，减少腰腹部多余脂肪。</p>
						</p>
						</div>
					</div>
					 <div class="col-md-3 train-grid wow fadeInRight animated animated"
						data-wow-delay="0.4s">
						<div class="train-top hvr-bounce-to-right">
							<div class="train-img">
								<img src="static/fitness/images/e8.png" />
							</div>
							<h4>健身器械(三)</h4>
							<p>
							<br/>踏步车：主要用以锻炼腿、腰、腹部肌肉及心肺功能。							
							<br/>椭圆机：平滑流畅的运动轨迹和交叉坡度专利技术让使用者以符合生物力学的姿势锻炼肌肉组，增加了锻炼的多样性和有效性。零阻力的锻炼减少肌肉劳损的发生。
							<br/>健身车：锻炼时，象骑自行车一样，主要用来增强腿部力量，增强心血管功能。 
							
							
							</p></div>
					</div>
					 <div class="clearfix"></div> 
				</div>
			</div>
		</div>
		<!---train--->
		<div class="fit-section w3l-layouts">
			<div class="container">
				<div class="fit-grids">
					<div class="col-md-4 fit-grid wow fadeInDownBig animated animated"
						data-wow-delay="0.4s">
						<div class="fit-left hvr-bounce-to-bottom">
							<h3>排课计划</h3>
							<p>
								力量区锻炼：运用靠椅进行胸部，手臂，背部塑形<br /> 动感单车：伴随激情的歌曲让自己大汗淋漓
							</p>
							<ul>
								<li>星期一 —— 星期六 : 09:00 - 21:00</li>
								<li>星期日 : 无教练</li>
							</ul>
						</div>
					</div>
					<div class="col-md-4 fit-grid wow fadeInUpBig animated animated"
						data-wow-delay="0.4s">
						<img src="static/fitness/images/f2.jpg" class="img-responsive"
							alt="" />
					</div>
					<div class="col-md-4 fit-grid wow fadeInRight animated animated"
						data-wow-delay="0.4s">
						<div class="fit-right hvr-bounce-to-right">
							<h3>力量锻炼</h3>
							<p>哑铃是一种用于增强肌肉力量训练的简单器材。 动能哑铃 动能哑铃 它的主要材料是铸铁，有的外包一层橡胶。
								它的用途是用于肌力训练，肌肉复合动作训练。因运动麻痹、疼痛、长期不活动等导致肌力低下的患者，手持哑铃，可利用哑铃的重量进行抗阻力主动运动，训练肌力。</p>
						</p>

						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="fit-grids1">
					<div class="col-md-8 fit-grid2 wow fadeInLeft animated animated"
						data-wow-delay="0.4s">
						<img src="static/fitness/images/f3.jpg" class="img-responsive"
							alt="" />
					</div>
					<div
						class="col-md-4 fit-grid1 hvr-bounce-to-bottom wow fadeInDownBig animated animated"
						data-wow-delay="0.4s">
						<div class="fit-right">
							<h3>动感单车</h3>
							<p>有些动感单车具有拉伸功能，更能适合高矮胖瘦的各类人群正确的姿势应该是：身体稍向前倾，身体两臂伸直，腹部收紧，采用腹式呼吸方法，双腿和车的横梁平行或稍向内扣，膝、髋关节保持协调，身体不要左右摆动，注意把握骑行节奏。此外，蹬踏的姿势也很重要。“一般人认为，所谓的蹬踏就是脚往下踩，脚蹬子转一圈带动飞轮前进就行了，但正确的蹬踏应该分为踩、拉、提、推四个连贯动作。”专业教练石波现身说法：“脚掌先向下踩，小腿再向后收缩回拉，再向上提，最后往前推，这样正好是蹬踏一周360度。如此有节奏地蹬踏，不仅节省力气还能够提高速度。</p>

						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="fit-grids wow fadeInLeft animated animated"
					data-wow-delay="0.4s">
					<!-- <div class="col-md-4 fit-grid">
								<img src="static/fitness/images/f11.jpg" class="img-responsive" alt=""/>
							</div> -->
					<div class="col-md-4 fit-grid wow fadeInDownBig animated animated"
						data-wow-delay="0.4s">
						<div class="fit-left hvr-bounce-to-bottom">
							<h3>瑜伽课程</h3>
							<p>瑜伽：放松自己的身体</p>
							<ul>
								<li>星期一  —— 星期六 : 09:00 - 21:00</li>
								<li>星期日 : 无教练</li>
							</ul>
						</div>
					</div>
					<div class="col-md-4 fit-grid">
						<img src="static/fitness/images/f11.jpg" class="img-responsive"
							alt="" />
					</div>
					<div class="col-md-4 fit-grid wow fadeInRight animated animated"
						data-wow-delay="0.4s">
						<div class="fit-right hvr-bounce-to-right">
							<h3>瑜伽要领</h3>
							<p>
							1、 坐于椅子上，双膝关节并拢，脊柱立直

<br/>2、 吸气，双手臂在背部反扣手掌合十。两肘内收。
<br/>3、 呼气。转头看向身体的一侧。
<br/>4、 保持2-3次呼吸。
<br/>5、 吸气回正，呼气重复另一侧。
<br/>功效：缓解肩颈的压力，预防肩周炎，颈椎病的产生。</p>

						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="fit-grids1">
					<div class="col-md-8 fit-grid2 wow fadeInUpBig animated animated"
						data-wow-delay="0.4s">
						<img src="static/fitness/images/f44.jpg" class="img-responsive"
							alt="" />
					</div>
					<div
						class="col-md-4 fit-grid1 hvr-bounce-to-bottom wow fadeInDownBig animated animated"
						data-wow-delay="0.4s">
						<div class="fit-right">
							<h3>静态课程</h3>
							<p>单腿屈膝
							<br/>提醒：做不到的MM可以将十指交扣于身后，自然伸直就可以啦。但是一定要两手臂向内收。
<br/>1、坐立于椅子上，吸气起左腿水平于地面，弯曲右腿置于左膝之上。
<br/>2、呼气，保持右大腿内侧收紧，脚掌尽量抵住左膝
<br/>3、保持自然的呼吸，脊背挺直，感觉有一条绳子在头顶拉着我们的身体不断向上。
<br/>4、交换另一侧腿完成姿势，每个动作控制的时间在15秒钟以上</p>

						</div>
					</div>
					
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		
		<!---Benefits - Join Today!--->
		
	</div>
	
	<div class="testimonials-section">
		<div class="container">
			<h3>客户评价</h3>
			<div class="testimonials-grids">
			
					<ul>	
					<c:if test="${page.totalPage>0}">
						<c:forEach items="${page.opinion}" var="opinion">
							<li class="am-comment   am-comment-primary"><a
									href="#link-to-user-home"><%-- <img class="am-circle" src="<%=basePath%>${loginUser.profilehead}"
									width="48" height="48" alt="" /> --%> </a>
									<div class="am-comment-main">
										<header class="am-comment-hd">
										<div class="am-comment-meta">
											<a class="am-comment-author" href="#link-to-user">${opinion.username}</a>
											发表于
											<fmt:formatDate value="${opinion.createdate}" pattern="yyyy-MM-dd HH:mm:ss"/>								
										</div>
										</header>
			<div class="am-comment-bd">
											<p>${opinion.getContent()}
											</p>
										</div>
									
									</div>
									</li>

							</c:forEach>
					</c:if>	
				</ul>		
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
								href="<%=basePath%>opinion/getallopinion.do?currentPage=2&rows=5">下一页</a>
							<a
								href="<%=basePath%>opinion/getallopinion.do?currentPage=${page.totalPage}&rows=5  ">尾页</a>
						</c:if>
						<!-- 非第一页也非最后一页-->
						<c:if test="${page.currentPage>1 and page.currentPage<page.totalPage}">
							<a
								href="<%=basePath%>opinion/getallopinion.do?currentPage=1&rows=5 ">首页</a>
							<a
								href="<%=basePath%>opinion/getallopinion.do?currentPage=${page.currentPage-1}&rows=5 ">上一页</a>
							<a
								href="<%=basePath%>opinion/getallopinion.do?currentPage=${page.currentPage+1 }&rows=5  ">下一页</a>
							<a
								href="<%=basePath%>opinion/getallopinion.do?currentPage=${page.totalPage}&rows=5  ">尾页</a>
						</c:if>
						<!-- 最后一页情形 -->
						<c:if test="${page.currentPage==page.totalPage}">
							<a
								href="<%=basePath%>opinion/getallopinion.do?currentPage=1&rows=5  ">首页</a>
							<a
								href="<%=basePath%>opinion/getallopinion.do?currentPage=${page.currentPage-1}&rows=5  ">上一页</a>
						</c:if>
						</c:if>
					</div>
					<!-- 分页条1结束 -->
				</div>
			</div>
						
	
				<div class="clearfix"></div>
			</div>
			
		</div>
	</div>
	<!---Testimonials--->
	<!---footer--->
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
					<ul>
					<p>北京市海淀区98号</p>
					<p></p>
					<p>手机: 15835481516</p>
					<p>备用手机：15035596362</p>
					<p>邮箱：707976215@qq.com</p>
					<a href="mailto:example@mail.com"> </a>
					</ul>
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