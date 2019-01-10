<%@ page language="java" import="java.util.*,com.rjxy.fitness.entity.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>vip会员中心</title>
<!---css--->
<link href="<%=basePath %>static/fitness/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="<%=basePath %>static/fitness/css/style.css" rel='stylesheet' type='text/css' />

<link rel="stylesheet" href="<%=basePath %>static/plugins/amaze/css/amazeui.min.css">
    <link rel="stylesheet" href="<%=basePath %>static/plugins/amaze/css/admin.css">
    <link rel="stylesheet" href="<%=basePath %>static/plugins/contextjs/css/context.standalone.css">
    <script src="<%=basePath %>static/plugins/jquery/jquery-2.1.4.min.js"></script>  
    <script src="<%=basePath %>static/plugins/amaze/js/amazeui.min.js"></script>
    <script src="<%=basePath %>static/plugins/amaze/js/app.js"></script>
    <script src="<%=basePath %>static/plugins/layer/layer.js"></script>
    <script src="<%=basePath %>static/plugins/laypage/laypage.js"></script>
    <script src="<%=basePath %>static/plugins/contextjs/js/context.js"></script> 


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
          
		  
			 <h1><a class="navbar-brand" href="<%=basePath %>index.jsp"><img src="<%=basePath %>static/fitness/images/e.png"/> Sport Fitness Gym </a></h1>
        </div>
         <div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right wow fadeInRight animated animated" data-wow-delay="0.4s">
				<li class="active"><a class="nav-in" href="<%=basePath %>opinion/getallopinion.do?currentPage=1&rows=5"><span data-letters="欢迎">主页</span></a></li>
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
					
					 <li><a class="nav-in" href="<%=basePath%>fitnessUser/logout.do"><span data-letters="网站">退出</span></a></li>
			<% }%>
									
		   </span></a></li>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
<!---banner--->
			<div class="banner wow fadeInDownBig animated animated" data-wow-delay="0.4s">
				<div class="container">
					<h2>会员中心</h2>
				</div>
			</div>
<!--typo-starts-->
	<header class="am-topbar admin-header">
    <div class="am-topbar-brand">
        <i class="am-icon-weixin"></i> <strong>FitnessChat</strong> <small>会员中心</small>
    </div>
    <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>
    <div class="am-collapse am-topbar-collapse" id="topbar-collapse">
        <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
            <li class="am-dropdown" data-am-dropdown>
                <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
                    ${loginUser.userid }
                   <%
                   List<Message> checkList =(List<Message>)request.getAttribute("checkList");
                   if(checkList.size()>0)
                   {
                   %>
                   <span onclick="showCheckDiv()">[<%=checkList.size() %>]</span>
                   <%
                   }
                   %> 
                   <span class="am-icon-caret-down"></span>
                </a>
            <ul class="am-dropdown-content">
					<li><a href="<%=basePath%>info-setting.jsp"><span class="am-icon-user"></span>
							资料</a></li>
					<li><a href="<%=basePath%>info-setting.jsp"><span
							class="am-icon-cog"></span> 设置</a></li>
					<li><a href="<%=basePath%>fitnessUser/logout.do"><span
							class="am-icon-power-off"></span> 注销</a></li>
				</ul></li>

        </ul>
    </div>
    <!-- 验证消息的DIV 显示所有的验证消息 -->
    <div id="checkDiv" style="width:240px;border:solid 1px #225566; left:760px;position:absolute;display:none;background-color:white;top:3px;">
     <%
    for(int i =0;i<checkList.size();i++){
    	Message message = checkList.get(i);
    %>
    <%=message.getContent()  %>&nbsp;&nbsp;
    <a href="javascript:hideCheckDiv('<%=message.getId() %>','yes')">同意</a>
    <a href="javascript:hideCheckDiv('<%=message.getId() %>','no')">拒绝</a><br/>
    <% 
    }
     %> 
     </div>
</header>
<script type="text/javascript">
//显示验证消息列表
   function showCheckDiv(){
   document.getElementById("checkDiv").style.display="block";
}
//处理验证消息列表
function hideCheckDiv(mid,resu){
   document.getElementById("checkDiv").style.display="none";
   location.href="<%=basePath%>fitnessUser/doCheckMessage.do?mid="+mid+"&resu="+resu;
}
</script> 
<div class="am-cf admin-main">
<!-- sidebar start -->
<!-- <div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
    
    
</div> -->
<div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
    <div class="am-offcanvas-bar admin-offcanvas-bar">
        <ul class="am-list admin-sidebar-list">
            <li><a href="<%=basePath %>fitnessUser/main.do"><span class="am-icon-commenting"></span> 聊天</a></li>
            <li><a href="<%=basePath %>information.jsp" class="am-cf"><span class="am-icon-book"></span> 个人信息<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
            <li class="admin-parent">
                <a class="am-cf" data-am-collapse="{target: '#collapse-nav'}"><span class="am-icon-cogs"></span> 设置 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
               
                    <li><a href="<%=basePath %>info-setting.jsp"><span class="am-icon-group"></span> 个人设置</a></li>
                    <li><a href="<%=basePath %>fitnessUser/getallspace.do?currentPage=1&rows=5&spaceid=${loginUser.id}"><span class="am-icon-cog"></span>心情动态</a></li>                 
                </ul>
            </li>
            <li><a href="<%=basePath %>space/getallspace.do?currentPage=1&rows=5"><span class="am-icon-globe"></span>好友动态</a></li> 
           <li><a href="<%=basePath %>fitnessUser/selectnotfriends.do?currentPage=1&rows=5"><span class="am-icon-globe"></span>添加好友</a></li>        
            <li><a href="<%=basePath %>fitnessUser/logout.do"><span class="am-icon-sign-out"></span> 注销</a></li>
        </ul>
        <div class="am-panel am-panel-default admin-sidebar-panel">
            <div class="am-panel-bd">
                <p><span class="am-icon-tag"></span> Welcome</p>
                <p>欢迎使用SportFitness聊天室~</p>
            </div>
        </div>
    </div>
</div>

<!-- sidebar end -->
    <!-- content start -->
    <div class="admin-content"  >
            <div class="" style="width: 80%;float:left;">
   
            <!-- 聊天区 -->
            <div class="am-scrollable-vertical" id="Fitness-view" style="height: 500px;">
                <ul class="am-comments-list am-comments-list-flip" id="Fitness">
                <%
                if(request.getAttribute("messageList")!=null){
                	//获取登录对象
                	Fitnessuser user = (Fitnessuser)session.getAttribute("loginUser");
                	List<Message> messageList = 
                	(List<Message>)request.getAttribute("messageList");
                	for(int i=0;i<messageList.size();i++){
                		Message message = messageList.get(i);
                		//判断谁给谁发的消息
                		if(message.getFromid().equals(user.getId())){
                 %>
                <li class="am-comment am-comment-flip am-comment-primary"><a href="#link-to-user-home"><img width="48" height="48" class="am-comment-avatar" alt="" src="<%=basePath%>${loginUserser.profilehead}"></a><div class="am-comment-main">
                <header class="am-comment-hd"><div class="am-comment-meta">   
                <a class="am-comment-author" href="#link-to-user"><%=user.getUserid() %></a> 
                	发表于<time><%=message.getTime() %></time> 
                	发送给:<%=message.getToid() %> </div></header>
                	<div class="am-comment-bd"> <p><%=message.getContent() %></p></div></div></li>
                <%}else{ %>
                <li class="am-comment am-comment-primary">
                <a href="#link-to-user-home">
                	<img width="48" height="48" class="am-comment-avatar" alt="" src="<%=basePath%>${loginUser.profilehead}"></a>
                <div class="am-comment-main">
                <div class="am-comment-meta">   
                <a class="am-comment-author" href="#link-to-user"><%=message.getFromid() %></a> 
                	发表于  <time><%=message.getTime() %></time> 
                	发送给:<%=user.getUserid() %> </div>
                </header>
                <div class="am-comment-bd"> <p><%=message.getContent() %></p></div>
                </div></li>  
         		<%
         		}
         		}
         		} %>
                </ul>
            </div>
            <form action="addmessage.do" method="post">
            <!-- 输入区 -->
            <div class="am-form-group am-form">
                <!-- 隐藏域 -->
                <input id = "toid" name="toid" type="hidden"/>
                <textarea class="" id="message" name="content" rows="5"  placeholder="这里输入你想发送的信息..."></textarea> 
            </div>
            <!-- 接收者 -->
            <div class="" style="float: left">
                <p class="am-kai">发送给 : <span id="sendto"></span></p>
            </div>
            <!-- 按钮区 -->
            <div class="am-btn-group am-btn-group-xs" style="float:right;"> 
                <button class="am-btn am-btn-default" type="submit" ><span class="am-icon-commenting"></span> 发送</button>
            </div>
            </form>
        </div>
        <!-- 列表区 -->
        <div class="am-panel am-panel-default" style="float:right;width: 20%;">
        <%
           List<Fitnessuser> friendList= (List<Fitnessuser>)request.getAttribute("friendList");
        %>
            <div class="am-panel-hd">
                <h3 class="am-panel-title">好友列表 [<%=friendList.size() %>]</h3>
            </div>
            <%
            for(int i=0;i<friendList.size();i++){
            	Fitnessuser friend = friendList.get(i);
            %>
             <ul class="am-list am-list-static am-list-striped" >
                <li><%=friend.getUserid() %> 
                <%
                  //判断是否有未读取消息
                  if (friend.getChecktype()>0 ) {%>
                <button class="am-btn am-btn-xs am-btn-danger" id="tuling" onclick="readMessage('<%=friend.getId() %>')">
                <%=friend.getChecktype()  %></button></li>
                <%}else{ %>
                <button type="button" class="am-btn am-btn-xs am-btn-primary am-round" 
                onclick="addFitness('<%=friend.getUserid() %>','<%=friend.getId() %>');">
                <span class="am-icon-phone"><span>私聊</button></li>
                <%} %>
             </ul>
             <%} %>
          <script type="text/javascript">
          function addFitness(nickname,id){
        	  document.getElementById("sendto").innerHTML=nickname;
        	  document.getElementById("toid").value=id;
         }
          function readMessage(id){
        	  location.href="<%=basePath%>fitnessUser/main.do?friendid="+id;
          }
         </script>
         </div>
    </div>
    <!-- content end -->
</div>	
	<!--typo-ends-->
<div class="footer-section" id="footer-section"
		style="background-color: 158FD1">
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