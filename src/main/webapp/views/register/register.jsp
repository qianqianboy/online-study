<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>在线学习平台 | 注册界面</title>
        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="/static/assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="/static/assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="/static/assets/css/form-elements.css">
        <link rel="stylesheet" href="/static/assets/css/style.css">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="../favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/static/assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/static/assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/static/assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="/static/assets/ico/apple-touch-icon-57-precomposed.png">

    </head>

    <body style="background-image: url('/static/assets/img/backgrounds/1.jpg')">

        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>在线学习平台 |</strong> 注册界面</h1>
                            <div class="description">
                            	<p>
	                            	<strong>编程是一种乐趣</strong></a>, 欢迎加入我们的平台!
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>开始注册</h3>
                            		<p>请输入相关信息进行注册</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-key"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" id="login-form" action="/student/register" method="post" class="login-form">
                                    <div class="form-group">
                                        <label class="sr-only" for="form-username">用户名</label>
                                        <input type="text" name="name" placeholder="请输入昵称..." class="form-username form-control" id="form-username">
                                    </div>
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">邮箱</label>
			                        	<input type="email" name="email" placeholder="请输入邮箱..." class="form-username form-control" id="form-email">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">密码</label>
			                        	<input type="password" name="password" placeholder="请输入密码..." class="form-password form-control" id="form-password">
			                        </div>
                                    <%--<div class="form-group">--%>
                                        <%--<label class="sr-only" for="form-password">确认密码</label>--%>
                                        <%--<input type="password" name="password" placeholder="请再次输入密码..." class="form-password form-control" id="again-password">--%>
                                    <%--</div>--%>
			                        <button type="submit" class="btn" style="background-color: rgb(17,170,140);">注册</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                
                </div>
            </div>
            
        </div>


        <!-- Javascript -->
        <script src="/static/assets/js/jquery-1.11.1.min.js"></script>
        <script src="/static/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="/static/assets/js/jquery.backstretch.min.js"></script>
        <script src="/static/assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="/static/assets/js/placeholder.js"></script>
        <![endif]-->
        <script src="/static/assets/js/bootstrapValidator.min.js"></script>
        <script type="text/javascript" src="/static/assets/js/check.js"></script>
    </body>

</html>