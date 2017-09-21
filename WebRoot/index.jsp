<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
	<head>
	    <meta charset="utf-8">  
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
		<base href="<%=basePath%>">
		<title>欢迎来到MIN民宿</title>
		<link rel="stylesheet" type="text/css" href="module/css/reset.css">
		<link rel="stylesheet" type="text/css" href="module/css/homePage/index.css">
		<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet"> 
		<link rel="stylesheet" type="text/css" href="module/css/bootstrap-theme.css">
		<link rel="stylesheet" type="text/css" href="module/css/bootstrap-datetimepicker.min.css">
		
		<link rel="stylesheet" type="text/css" href="module/css/star-rating-svg.css">
	
	    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>  
	    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
	    <script src="module/js/bootstrap-datetimepicker.js" type="text/javascript"></script>
        <script src="module/js/bootstrap-datetimepicker.zh-CN.js" type="text/javascript"></script>
        <script src="module/js/jquery.star-rating-svg.js" type="text/javascript"></script>
<!--         <script src="module/js/template.js" type="text/javascript"></script> -->
        
	    <script src="module/js/homePage/index.js" type="text/javascript"></script>
	    <script src="module/js/homePage/homePage.js" type="text/javascript"></script>
	    
	    <script type="text/javascript">  
	    $(function(){
	    	 $('#startimeTxt').datetimepicker({  
	    	 	format: 'yyyy-mm-dd',  
	            language: 'zh-CN',  
	            pickTime: false ,
	            minView: 2 
	        }).on('changeDate',function(){  
	        	$(this).datetimepicker('hide');  
	        });  
	         $('#endtimeTxt').datetimepicker({  
	    	 	format: 'yyyy-mm-dd',  
	            language: 'zh-CN',  
	            pickTime: false  ,
	            minView: 2
	        }).on('changeDate',function(){  
	        	$(this).datetimepicker('hide');  
	        });
	    });
     
    </script>
	</head>
	<body>
	
	<input type="text" style="display:none" class="loginIDURL" name="loginIDURL" value="<%=request.getSession().getAttribute("ID")%>"/>
	<input type="text" style="display:none" class="loginNameURL" name="loginNameURL" value="<%=request.getSession().getAttribute("LOGINNAME")%>"/>
	<input type="text" style="display:none" class="userPhotoURL" name="userPhotoURL" value="<%=request.getSession().getAttribute("USERIMG")%>"/>
		<div class="warpper">
		<div class="public-header">
		    <div class="header-top">
				<a class="logo" href="#"></a>
				<ul class="nav" >
					<li class="dropdown">
				    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
					成为房东 
					<b class="caret"></b>
				    </a>
				    <ul class="dropdown-menu">
					<li><a href="module/JSP/house/housePush.jsp">发布房源</a></li>
					<li><a href="module/JSP/story/storyPush.jsp">发布故事</a></li>
				    </ul>
					</li>
					<li><a href="module/JSP/story/storyMore.jsp">故事</a></li>
					<li ><a id="login" href="#">登录</a></li>
					<li ><a id="register" href="#">注册</a></li>
				</ul>
			</div>
			<div class="banner">
				<h2>欢迎来到 MINMIN宿，</br>国庆旅行，全球民宿任你挑</h2>
				<a class="banner-btn">领取￥200首单礼</a>
			</div>
		</div>
		<div class="public-main">
			<div class="search">
				<input class="locationTxt" id="locationTxt" type="text" name="locationTxt" placeholder="目的地">
				<input class="startimeTxt" id="startimeTxt" type="text" name="startimeTxt" placeholder="入住日期">
				<input class="endtimeTxt" id="endtimeTxt" type="text" name="endtimeTxt" placeholder="退房日期">
				<input class="peopleNum" id="peopleNum" type="text" name="peopleNum" placeholder="房客人数">
				<button class="searchbtn" id="searchbtn" >搜索</button>
			</div>
			<hr/>
			<div class="houses">
				<h2 class="house-title">热门目的地</h2>
				<div class="houses-container" id="housescontainer">
	
				</div>
				
				<button class="morehouse" id="morehouse">查看更多房源</button>
		    </div>
		  
		    
		    <div class="story">
			    <h2 class="story-title">故事精选</h2>
			    <a href="module/JSP/story/storyMore.jsp" class="morestory" id="morestory">浏览更多
			    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a>
				<div class="storyContainer" id="storyContainer">
				     <%-- <div class="story-list">
					    <a href='module/JSP/story/storyDetails.jsp><img class="storypPhoto" id="storypPhoto" src="img/story1.jpg"></a>
					    <div class="story-detil">
						    <span class="storyaddress" id="storyaddress">伦敦</span>
						    <span class="storyitd" id="storyitd">住在大厨家里是怎样的体验？早餐美到舍不得吃！</span>
					    </div>
					   
				    </div> 
				     <div class="story-evaluate">
						    <img class="userphoto" id="userphoto" src="img/user01.jpg">
						    <span class="glyphicon glyphicon-heart"></span><span class="zanNum">26</span>
						    <span class="glyphicon glyphicon-comment"></span><span class="evaluateNum">6</span>
					    </div>  --%>
			    </div>
			    
		    </div>
		</div>
		<hr/>
		<div class="public-footer">
			<a href="#"><img class="bottomlogo" src="img/logo1.png"></a>
			<div class="aboutus">
			    <h3 class="aboutustitle">Min民宿</h3>
				<ul>
					<a href="#"><li>关于我们</li></a>
					<a href="#"><li>help</li></a>
				</ul>
			</div>
			<div class="introduce">
			    <h3 class="aboutustitle">出租</h3>
				<ul>
				    <a href="#"><li>为什么要出租</li></a>
					<a href="#"><li>待客之道</li></a>
					<a href="#"><li>房东义务</li></a>
				</ul>
			</div>
		</div>
		<hr/>
	</div>
	
	<!-- 登录框 -->
    <div id="loginbox" class="modal fade" >
	    <div class="modal-dialog" role="document">  
		    <div class="modal-content"> 
		        <div class="modal-header">
		            <a class="close" data-dismiss="modal">×</a>
		            <h3>登录</h3>
		        </div>
		        <div class="modal-body">
		        <div >
		            <div class="form-group">
			            <label for="userName">用户名</label>
			            <input type="text" class="form-control" id="userName1" placeholder="请输入用户名" style="height:43px;">
		            </div>
		            <div class="form-group">
			            <label for="password">密码</label>
			            <input type="password" class="form-control" id="password1" placeholder="请输入密码" style="height:43px;">
		            </div>
		            <div class="checkbox">
			            <label>
			            <input id="rememberMe" type="checkbox">记住我
			            </label>
		            </div>
		            <button id="loginbtn" class="loginbtn" onclick="login()">登录</button>
		        </div>
		        </div>
		        <div class="modal-footer">
		            <a href="#" class="btn" data-dismiss="modal">关闭</a>
		        </div>
		    </div>
	    </div>
    </div>
    
    <!-- 注册框 -->
    <div id="registbox" class="modal fade" >
	    <div class="modal-dialog" role="document">  
		    <div class="modal-content"> 
		        <div class="modal-header">
		            <a class="close" data-dismiss="modal">×</a>
		            <h3>注册</h3>
		        </div>
		        <div class="modal-body">
		        <div role="form">
		            <div class="form-group" style="display:none;">
			            <label for="userID">用户ID</label>
			            <input type="text" class="form-control" id="userID">
		            </div>
		            <div class="form-group">
			            <label for="phoneNumber">手机号</label> 
			            <input type="text" class="form-control" id="phoneNumber" placeholder="请输入手机号" onblur="fixedCase()" style="height:43px;">
			            <label for="phoneNumber" class="col-sm-3 control-label1" id="fixedPrompt"></label>
		            </div>
		            <div class="form-group">
			            <label for="userName">用户名</label>
			            <input type="text" class="form-control" id="userName2" placeholder="请输入用户名" onblur="upperCase()" style="height:43px;">
			            <label for="userName" class="col-sm-3 control-label1" id="clientNoPrompt"></label>
		            </div>
		            <div class="form-group">
			            <label for="password">密码</label>
			            <input type="password" class="form-control" id="password2" onblur="passwordCase()" placeholder="请输入密码" style="height:43px;">
			            <label for="password" class="col-sm-3 control-label1" id="passwordPrompt"></label>
		            </div>
		            <div class="form-group">
			            <label for="email">邮箱</label>
			            <input type="text" class="form-control" id="email" placeholder="请输入邮箱" style="height:43px;">
		            </div>
		            <div class="form-group">
			            <label for="introduce">简介</label>
			            <input type="text" class="form-control" id="introduce" placeholder="" style="height:43px;">
		            </div>
		            <div class="form-group ">
			            <label for="age">年龄</label>
			            <input type="text" class="form-control" id="age" placeholder="" style="height:43px;">
		            </div>
		            <div class="form-group ">
			            <label for="sex">性别</label>
			            <label>
                        <input type="radio" name="optionsRadios" id="man" value="man" checked> 男
                        </label>
                        <label>
                        <input type="radio" name="optionsRadios" id="woman" value="woman"> 女
                        </label>
			        </div>
			        <button id="registerbtn" class="loginbtn" onclick="register()">注册</button>
		            
		        </div>
		        </div>
		    </div>
	    </div>
    </div>
    
	</body>
</html>
