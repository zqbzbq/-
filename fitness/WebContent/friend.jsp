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
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SportFitness | 关于</title>
<link rel="stylesheet" href="static/plugins/amaze/css/amazeui.min.css">
<link rel="stylesheet" href="static/plugins/amaze/css/admin.css">
<link href="<%=basePath%>static/fitness/css/bootstrap.css"
	rel='stylesheet' type='text/css' />
<link href="<%=basePath%>static/fitness/css/style.css" rel='stylesheet'
	type='text/css' />

<link rel="stylesheet"
	href="static/plugins/contextjs/css/context.standalone.css">
<script src="static/plugins/jquery/jquery-2.1.4.min.js"></script>
<script src="static/plugins/amaze/js/amazeui.min.js"></script>
<script src="static/plugins/amaze/js/app.js"></script>
<script src="static/plugins/layer/layer.js"></script>
<script src="static/plugins/laypage/laypage.js"></script>
<script src="static/plugins/contextjs/js/context.js"></script>
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
				href="javascript:;"> ${loginUser.nickname }<span
					class="am-icon-caret-down"></span>
			</a>
				<ul class="am-dropdown-content">
					<li><a href="<%=basePath%>info-setting.jsp"><span
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
			<div class="am-offcanvas-bar admin-offcanvas-bar">
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
				<div class="am-panel am-panel-default admin-sidebar-panel"> 
					<div class="am-panel-bd" style="background-color:;margin-top:30px;height:200px">
						<p>						  
							<span class="am-icon-tag" style="padding-left:23px;padding-top:40px;"></span> Welcome
						</p>
						<span class="am-icon-tag" style="padding-left:33px"></span>欢迎使用SportFitness聊天室~
						
					</div>			
				</div>
			</div>
		</div>
		<!-- sidebar end -->
		<!-- content start -->
		<div class="admin-content">
			<div class="am-cf am-padding">
				<div class="am-fl am-cf">
					<strong class="am-text-primary am-text-lg">好友动态</strong> / <small>about</small>
				</div>
			</div>
			<div class="am-tabs am-margin" data-am-tabs>
				<ul class="am-tabs-nav am-nav am-nav-tabs">
					<li class="am-active"><a href="#tab1">动态</a></li>
					<!-- <li><a href="#tab2">添加好友</a></li> -->
				</ul>
				<div class="am-tabs-bd">
					<div class="am-tab-panel am-fade am-in am-active" id="tab1"style="height: 900px;">
						<hr>
						<blockquote>
						<ul class="am-comments-list am-comments-list-flip" id="chat">
							<c:if test="${page.totalPage>0}">
						<c:forEach items="${page.space}" var="space">
							<li class="am-comment   am-comment-primary"><a
									href="#link-to-user-home"><img width="48" height="48"
										class="am-comment-avatar" alt=""
										src="<%=basePath%>${space.profilehead}"></a>
									
									<div class="am-comment-main">
										<header class="am-comment-hd">
										<div class="am-comment-meta">
											<a class="am-comment-author" href="#link-to-user"> ${space.nickname} </a>
											发表于
											<fmt:formatDate value="${space.createdate}" pattern="yyyy-MM-dd HH:mm:ss"/>								
										</div>
										</header>
			<div class="am-comment-bd">
											<p>${space.content}
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
								href="<%=basePath%>space/getallspace.do?currentPage=2&rows=5">下一页</a>
							<a
								href="<%=basePath%>space/getallspace.do?currentPage=${page.totalPage}&rows=5 ">尾页</a>
						</c:if>
						<!-- 非第一页也非最后一页-->
						<c:if test="${page.currentPage>1 and page.currentPage<page.totalPage}">
							<a
								href="<%=basePath%>space/getallspace.do?currentPage=1&rows=5">首页</a>
							<a
								href="<%=basePath%>space/getallspace.do?currentPage=${page.currentPage-1}&rows=5">上一页</a>
							<a
								href="<%=basePath%>space/getallspace.do?currentPage=${page.currentPage+1 }&rows=5 ">下一页</a>
							<a
								href="<%=basePath%>space/getallspace.do?currentPage=${page.totalPage}&rows=5 ">尾页</a>
						</c:if>
						<!-- 最后一页情形 -->
						<c:if test="${page.currentPage==page.totalPage}">
							<a
								href="<%=basePath%>space/getallspace.do?currentPage=1&rows=5">首页</a>
							<a
								href="<%=basePath%>space/getallspace.do?currentPage=${page.currentPage-1}&rows=5">上一页</a>
						</c:if>
						</c:if>
					</div>
					<!-- 分页条1结束 -->
				</div>
			</div>
						</blockquote>

					</div>
			<%-- 		<div class="am-tab-panel am-fade am-in am-scrollable-vertical"
						style="height: 900px;" id="tab2">
						<hr>

						<blockquote>
						<form class="am-form am-form-horizontal" id="information-form"
								action="${ctx}/${userid}/update" method="post" data-am-validator>
								<div class="am-form-group">
									<label for="userid" class="am-u-sm-2 am-form-label">用户名</label>
									<div class="am-u-sm-10">
										<input type="text" id="userid" name="userid"
											value="${loginUser.id }" disabled>
									</div>
								</div>

								<div class="am-form-group">
									<label for="nickname" class="am-u-sm-2 am-form-label">昵称</label>
									<div class="am-u-sm-10">
										<input type="text" id="nickname" name="nickname"
											value="${loginUser.nickname }" required
											placeholder="这里输入你的昵称...">
									</div>
								</div>

								<div class="am-form-group">
									<div class="am-u-sm-10 am-u-sm-offset-2">
										<button type="submit" class="am-btn am-round am-btn-success">
											<span class="am-icon-send"></span> 查找好友
										</button>
									</div>
								</div>
							</form>
							<table class="am-table am-table-striped">
								<thead>
									<tr>
										<th>用户id</th>
										<th>昵称</th>
										<th>头像</th>
										<th>性别</th>
										<th>注册日期</th>
										<th>加好友</th>
									</tr>
								</thead>
								<tbody>
									<%
										if (request.getAttribute("notfriendList") != null) {
											List<Fitnessuser> notfriendList = (List<Fitnessuser>)request.getAttribute("notfriendList");
											for (int i = 0; i < notfriendList.size(); i++) {
												Fitnessuser user = notfriendList.get(i);
									%>
									<tr>
										<td><%=user.getId()%></td>
										<td><%=user.getNickname()%></td>
										<td><img class="am-circle"
											src="static/source/img/bg1.jpg" width="40" height="40"
											alt="Amayadream" /></td>
										<td><%=user.getSex()%></td>
										<fmt:formatDate value="<%=space.getCreatedate()%>"
													pattern="yyyy-MM-dd HH:mm:ss" />
										 <td><fmt:formatDate value="<%=user.getLasttime()%>"
												pattern="yyyy-MM-dd" /></td> 
										<td><%=user.getLasttime()%></td>
										<td><a
											href="fitnessUser/addfriend.do?friendid=<%=user.getId()%>">加好友</a></td>
									</tr>
									<%
										}
										}
									%>
								</tbody>
							</table>
					</blockquote>
 
				</div>	 --%>
				
				
						
				</div>
			</div>


		</div>
		<!-- content end -->
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
					title="达内精品">达内</a> <a href="" target="_blank"></a>
			</p>
		</div>
	</div>
	<!--copy-->


	<a href="#" class="am-show-sm-only admin-menu"
		data-am-offcanvas="{target: '#admin-offcanvas'}"> <span
		class="am-icon-btn am-icon-th-list"></span>
	</a>
	
	<div id="replyDiv"
		style="width: 300px; height: 180px; background-color: #ffffff; border: solid 1px blue; position: absolute; top: 200px; left: 400px; display: none; z-index: 13000">
		<form class="am-form am-form-horizontal" id="information-form"
			action="${ctx}/${userid}/update" method="post" data-am-validator>
			<div class="am-form-group am-form">
				<textarea class="" id="message" name="message" rows="5"
					placeholder="这里输入你想发送的信息..."></textarea>
			</div>
			<!-- 接收者 -->
			<div class="" style="float: left">
				<p class="am-kai">
					发送给 : <span id="sendto">赵丽丽</span>
				</p>
			</div>
			<!-- 按钮区 -->
			<div class="am-btn-group am-btn-group-xs" style="float: right;">
				<button class="am-btn am-btn-default" type="button"
					onClick="sendMessage()">
					<span class="am-icon-commenting"></span> 发送
				</button>
				<button class="am-btn am-btn-default" type="button"
					onClick="closeReplyDiv()">关闭</button>
			</div>
		</form>
	</div>
	<!--回复DIV结束-->
	<script>
		function showReplyDiv() {
			$("#replyDiv").css("display", "block");
		}
		function closeReplyDiv() {
			$("#replyDiv").css("display", "none");
		}
	</script>
</body>
</html>
