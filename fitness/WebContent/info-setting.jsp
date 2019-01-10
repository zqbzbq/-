<%@ page language="java" import="java.util.*,com.rjxy.fitness.entity.*"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>SportFitness | 个人设置</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="<%=basePath%>static/plugins/amaze/css/amazeui.min.css">
<link rel="stylesheet" href="<%=basePath%>static/plugins/amaze/css/admin.css">
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
		<!-- sidebar（工具栏） start -->
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
					<!-- <li><a href="log.html"><span class="am-icon-inbox"></span> 系统日志<span class="am-badge am-badge-secondary am-margin-right am-fr">24</span></a></li> -->
					<li><a href="<%=basePath%>fitnessUser/logout.do"><span
							class="am-icon-sign-out"></span> 注销</a></li>
				</ul>
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

		<!-- content（内容） start -->
		<div class="admin-content">

			<div class="am-cf am-padding">
				<div class="am-fl am-cf">
					<strong class="am-text-primary am-text-lg">个人设置</strong> / <small>form</small>
				</div>
			</div>

			<div class="am-tabs am-margin" data-am-tabs>
				<ul class="am-tabs-nav am-nav am-nav-tabs">
					<li class="am-active"><a href="#tab1">基本信息</a></li>
					<li><a href="#tab2">修改头像</a></li>
					<li><a href="#tab3">修改密码</a></li>
					<li><a href="#tab4">取消预约课程</a></li>
					<li><a href="#tab5">计算BMI</a></li>
				</ul>

				<div class="am-tabs-bd">
					<div class="am-tab-panel am-fade am-in am-active" id="tab1">
						<form class="am-form am-form-horizontal" id="information-form"
							action="fitnessUser/updateuser.do" method="post"
							data-am-validator>
							<div class="am-form-group">
								<label for="userid" class="am-u-sm-2 am-form-label">用户名</label>
								<div class="am-u-sm-10">
									<input type="hidden" id="id" name="id" value="${loginUser.id }">
									<input type="text" id="userid" name="userid"
										value="${loginUser.userid }" disabled>
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
								<%
									Fitnessuser user = (Fitnessuser) session.getAttribute("loginUser");
								%>
								<label for="sex" class="am-u-sm-2 am-form-label">验证信息</label>
								<div class="am-u-sm-10">
									<input type="radio" name="checktype"
										<%if (user.getChecktype() == 0) {
				out.print("checked='checked'");
			}%>
										value="0">允许加好友 <input type="radio" name="checktype"
										<%if (user.getChecktype() == 1) {
				out.print("checked='checked'");
			}%>
										value="1">需要验证 <input type="radio" name="checktype"
										<%if (user.getChecktype() == 2) {
				out.print("checked='checked'");
			}%>
										value="2">拒绝加好友
								</div>
							</div>
							<div class="am-form-group">
								<label for="sex" class="am-u-sm-2 am-form-label">性别</label>
								<div class="am-u-sm-10">
									<select id="sex" name="sex" data-am-selected>
										<option selected></option>
										<option value="男">男</option>
										<option value="女">女</option>
									</select>
								</div>
							</div>
							<div class="am-form-group">
								<label for="age" class="am-u-sm-2 am-form-label">年龄</label>
								<div class="am-u-sm-10">
									<input type="number" id="age" name="age" min="1" max="100"
										value="${loginUser.age}" placeholder="这里输入你的年龄...">
								</div>
							</div>
							<div class="am-form-group" style="height: 50px;">
								<label for="profile" class="am-u-sm-2 am-form-label">个性签名</label>
								<div class="am-u-sm-10">
									<textarea class="" id="profile" name="profile" rows="4"
										placeholder="这里可以写下你的个性签名...">${loginUser.profile}</textarea>
								</div>
							</div>
							<div class="am-form-group">
								<div class="am-u-sm-10 am-u-sm-offset-2">
									<button type="submit" class="am-btn am-round am-btn-success">
										<span class="am-icon-send"></span> 提交
									</button>
								</div>
							</div>
						</form>
					</div>

					<!-- static/source/img/bg1.jpg -->
					<div class="am-tab-panel am-fade" id="tab2">
						
						<form class="am-form am-form-horizontal"
							action="fitnessUser/upload.do" method="post" enctype="multipart/form-data" onSubmit="return checkFileType();" style="text-align: center;">
							<input type="hidden" name="id" value="${loginUser.id }" />
							<div style="text-align: center; margin-bottom: 10px">
								
							</div>
							<div class="am-form-group am-form-file">
								<button type="button" class="am-btn am-btn-secondary am-btn-sm">
									<i class="am-icon-cloud-upload"></i> 选择要上传的文件
								</button>
								<input id="file" type="file" name="file" multiple>
							</div>
							<div id="file-list"></div>
							<button type="submit" class="am-btn am-round am-btn-success">
								<span class="am-icon-upload"></span> 上传头像
							</button>
							<script>
								$(function() {
									$('#file')
											.on(
													'change',
													function() {
														var fileNames = '';
														$
																.each(
																		this.files,
																		function() {
																			fileNames += '<span class="am-badge">'
																					+ this.name
																					+ '</span> ';
																		});
														$('#file-list').html(
																fileNames);
													});
								});
							</script>
						</form>
					</div>

					<div class="am-tab-panel am-fade" id="tab3">
						<form class="am-form am-form-horizontal" data-am-validator
							action="fitnessUser/updateuserpad.do" method="post">
							<input type="hidden" id="id" name="id" value="${loginUser.id }">
							<div class="am-form-group">
								<label for="password1" class="am-u-sm-2 am-form-label">原密码</label>
								<div class="am-u-sm-10">
									<input type="password" id="password1" name="oldpass"
										value="请输入原密码...">
								</div>
							</div>
							<div class="am-form-group">

								<label for="password2" class="am-u-sm-2 am-form-label">新密码</label>
								<div class="am-u-sm-10">
									<input type="password" id="password2" name="password" required
										placeholder="请输入新密码...">
								</div>
							</div>

							<div class="am-form-group">
								<label for="password3" class="am-u-sm-2 am-form-label">确认新密码</label>
								<div class="am-u-sm-10">
									<input type="password" id="password3"
										data-equal-to="#password2" required placeholder="请确认新密码...">
								</div>
							</div>

							<div class="am-form-group">
								<div class="am-u-sm-10 am-u-sm-offset-2">
									<button type="submit" class="am-btn am-round am-btn-success">
										<span class="am-icon-send"></span> 提交修改
									</button>
								</div>
							</div>
						</form>
					</div>
				
				<div class="am-tab-panel am-fade" id="tab4">
						<form class="am-form am-form-horizontal" data-am-validator
							action="ordercalss/deluserclass.do" method="post">
							<input type="hidden" id="id" name="id" value="${loginUser.id }">
							<div class="am-form-group">
								<label for="password1" class="am-u-sm-2 am-form-label"></label>
								<div class="am-u-sm-10">
									<!-- <input type="text" id="orderclass" name="orderclass"
										value="请输入原密码..."> -->
									<h3>已预订课程：</h3><h4> ${loginUser.orderclass }</h4></tr>
								</div>
							</div>
							
							<div class="am-form-group">
								<div class="am-u-sm-10 am-u-sm-offset-2">
									<button type="submit" class="am-btn am-round am-btn-success">
										<span class="am-icon-send"></span>取消预订
									</button>
								</div>
							</div>
						</form>
					</div>
				
				<div class="am-tab-panel am-fade am-in am-active" id="tab5">
							<form class="am-form am-form-horizontal" id="information-form"
								action="#" method="post" data-am-validator>
								<div class="am-form-group">
									<label for="BMI" class="am-u-sm-2 am-form-label">计算您的BMI</label>
									<div class="am-u-sm-10">
										你的身高(cm):<input type="text" name="height"><br> <br />
										你的体重(kg):<input type="text" name="weight"><br> <br />
										<input type="button" value="开始计算" onclick="Cal(this.form)">
										<br /> <br /> 你的理想体重:<input type="text" name="IW"><br />
										<br /> 您的BMI:<input type="text" name="BMI">
									</div>
								</div>
							</form>
						</div>
				
				
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

<script type="text/javascript" src="static/backend/js/jquery-1.4.2.js"></script>
	<script type="text/javascript">
		$(function() {
			$('#btn').click(function() {
				alert($('#xueya option:selected').val());
			})

		});

		var BMI = {};
		BMI.getBMI = function(a, b) {
			var bmi = b / ((a / 100) * (a / 100));
			return bmi;
		};
		BMI.idealweight = function(a) {
			var x = (a - 100) * 0.9;
			return x;
		};
		function Cal(form) {
			var a = eval(form.height.value);
			var b = eval(form.weight.value);
			var bmi = eval(form.BMI.value);
			var bmiValue = BMI.getBMI(a, b);
			BMI.disp_alert(bmiValue);
			form.IW.value = BMI.idealweight(a);
			form.BMI.value = bmiValue;
		}
		BMI.disp_alert = function(bmi) {
			if (bmi < 18.5) {
				alert("你的体重太轻,要多吃点哟!");
			} else if (bmi >= 18.5 && bmi < 23.9) {
				alert("亲,你的体重正常,要继续保持哟!");
			} else if (bmi >= 24 && bmi < 27) {
				alert("亲,您的体重过重,要减肥了!");
			} else if (bmi >= 28 && bmi < 32) {
				alert("亲,您的体重已经进入肥胖级别,为了自己的健康要减肥了!");
			} else {
				alert("亲,您的体重已经进入非常肥胖级别,为了自己的健康要抓紧减肥了");
			}
		}
	</script>

</body>
</html>