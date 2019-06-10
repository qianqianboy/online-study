<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="Lei Shi">
  <meta http-equiv="Cache-Control" content="o-transform">
  <meta http-equiv="Cache-Control" content="no-siteapp">
  <meta name="csrf-token" content="1483780974##87f89328c5616669f00302a263fe9061bb852818">
	
		
      <title>我的课程</title>
	<link rel="shortcut icon" href="/views/favicon.ico">
	<link rel="stylesheet" href="/static/font-awesome//4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/static/static/highlight.js/9.8.0/monokai-sublime.min.css">
    <link rel="stylesheet" href="/static/app/css/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/app/css/libs/katex/0.6.0/katex.min.css">
    <link rel="stylesheet" href="/static/app/css/libs/videojs/5.11.7/video-js.min.css">
	<link rel="stylesheet" href="/static/app/css/dest/styles.css?=2016121272249">

	<style>
		@font-face {
			font-family: "lantingxihei";
			src: url("/static/fonts/FZLTCXHJW.TTF");
		}

        /* modal 模态框*/
        #invite-user .modal-body {
            overflow: hidden;
        }
		#invite-user .modal-body .form-label {
			margin-bottom: 16px;
			font-size:14px;
		}
		#invite-user .modal-body .form-invite {
			width: 80%;
			padding: 6px 12px;
			background-color: #eeeeee;
			border: 1px solid #cccccc;
			border-radius: 5px;
			float: left;
			margin-right: 10px;
		}
		#invite-user .modal-body .msg-modal-style {
			background-color: #7dd383;
			margin-top: 10px;
			padding: 6px 0;
			text-align: center;
			width: 100%;
		}
		#invite-user .modal-body .modal-flash {
			position: absolute;
			top: 53px;
			right: 74px;
			z-index: 999;
		}
		/* end modal */

        .en-footer {
            padding: 30px;
            text-align: center;
            font-size: 14px;
        }
    </style>

<style>
    a:hover,
    a:focus {
        text-decoration: none;
    }
    span.label {
        display: inline-block;
        margin: 10px 3px 16px 3px;
        padding: 6px 16px;
        border: none;
        font-size: 14px;
        font-weight: 100;
    }
    span.label-default {
        color: #999;
        background: none;
    }
    span.label-success {
        color: #0c9;
        background: #E7F8F2;
    }
    .userinfo-banner [data-toggle="tooltip"] {
        display: inline-block;
        border-bottom: dashed 1px #999;;
        color: #999 !important;
    }
	.certificate-item {
		padding-top: 10px;
	}
	.certificate-item a {
		color: #444;
	}
</style>    
</head>

<body>
	
        
        
            






<nav class="navbar navbar-default navbar-fixed-top header">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#header-navbar-collapse" aria-expanded="false">
                <span class="sr-only">在线学习平台</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="../../xx.html">
                <img src="/static/img/logo.png"width="180">
            </a>
        </div>
        <div class="collapse navbar-collapse" id="header-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="dropdown active">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                        课程
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="active" href="/course/show/1" >全部课程</a></li>
                        <li><a class="" href="index.jsp?status=preview">即将上线</a></li>
                        <li><a class="" href="../../developer/index.html">开发者</a></li>
                    </ul>
                </li>
                <li class="">
                    <a href="/views/paths/index.html">关于我们</a>
                </li>
            </ul>


            <div class="navbar-right btns">
                <c:if test="${sessionScope.TEACHER!=null}">
                    <li class="dropdown ">
                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="/test/${sessionScope.TEACHER.image}" width="40" height="50">
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" style="color: #0ace9d">
                            <li><a  href="/teacher/info">个人中心</a></li>
                            <li><a class="" href="/teacher/mycourses/${sessionScope.TEACHER.id}">已发布课程</a></li>
                            <li><a class="" href="/teacher/logout">注销</a></li>
                        </ul>
                    </li>
                </c:if>
            </div>
            

            <form class="navbar-form navbar-right" action="/course/search" method="get" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" name="queryText" autocomplete="off" placeholder="搜索 课程/教师">
                </div>
            </form>
        </div>
    </div>
</nav>

        
	
<div class="userinfo-banner layout-no-margin-top">
    <div class="container layout">
        <div class="row">
            <div class="col-md-9 clearfix">
                <div class="pull-left userinfo-banner-avatar">
                    <div class="user-avatar ">
                        <img src="/test/${sessionScope.TEACHER.image}" width="80" height="100">
                    </div>
                </div>
                <div class="pull-left userinfo-banner-details">
                    <div class="userinfo-banner-meta">
                        <div class="user-username ">
                            <a class="username" href="#">
                                ${sessionScope.TEACHER.name}
                            </a>
                        </div>
                    </div>
                    <div class="userinfo-banner-status">
                        <span>${sessionScope.TEACHER.sex}</span>
                    </div>
                </div>
            </div>
            <%--<div class="col-md-3 userinfo-banner-labinfo">--%>
                <%--<div class="userinfo-banner-level">--%>
                    <%--<img src="../../../static/img/lou-level.png">--%>
                    <%--<div class="userinfo-current-level"><span>195</span> 楼</div>--%>
                    <%--<div class="userinfo-level-more" data-toggle="tooltip" data-placement="bottom" title="在实验环境中动手输入代码或命令时才计入有效学习时间">--%>
                        <%----%>
                        <%--距 196 楼还需 16 分钟有效学习时间--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        </div>
    </div>
</div>
<div class="container layout">
    <div class="row">
        <div class="col-md-9 layout-body">
            
<div class="content" role="tabpanel">
    
    
    <ul class="nav nav-tabs" rolw="tablist">
        <li role="presentation"  >
            <a href="/teacher/info" role="tab">个人资料</a>
        </li>
        <li role="presentation" class="active">
            <a href="/teacher/mycourses/${sessionScope.TEACHER.id}" role="tab">已发布课程</a>
        </li>

        <%--<li role="presentation" >--%>
            <%--<a href="questions.jsp" role="tab">我的评论</a>--%>
        <%--</li>--%>
        
    </ul>

    <div class="tab-content">
        <div role="tabpanel" class="tab-pane active">
            <div class="row">
<c:forEach items="${list}" var="course">
<div class="col-md-4 col-sm-6  course">
    <a class="course-box" href="/course/findById/${course.id}">
        <div class="sign-box">
        </div>
        <div class="course-img">
            <img alt="${course.title}" src="/test/${course.image}">
        </div>
        <div class="course-body">
            <span class="course-title" data-toggle="tooltip" data-placement="bottom" title="${course.title}">${cs.course.title}</span>
        </div>
        <div class="course-footer">
			<span class="course-per-num pull-left">
                <i class="fa fa-users"></i>
                收藏量：${course.followedNum}
			</span><span class="course-per-num pull-right">
                <i class="fa fa-users"></i>
                作者：${sessionScope.TEACHER.name}
			</span>
        </div>
    </a>
</div>
</c:forEach>

					
						



					
					

<%--<nav class="pagination-container">--%>
    <%--<ul class="pagination">--%>
        <%----%>
        <%--<li class="disabled">--%>
            <%--<a href="#" aria-label="Previous">--%>
                <%--<span aria-hidden="true">上一页</span>--%>
            <%--</a>--%>
        <%--</li>--%>
        <%----%>
        <%----%>
        <%----%>
        <%--<li class="active">--%>
            <%--<a href="/user/13?page=1">1</a>--%>
        <%--</li>--%>
        <%----%>
        <%----%>
        <%----%>
        <%--<li class="">--%>
            <%--<a href="/user/13?page=2">2</a>--%>
        <%--</li>--%>
        <%----%>
        <%----%>
        <%----%>
        <%--<li class="">--%>
            <%--<a href="/user/13?page=3">3</a>--%>
        <%--</li>--%>
        <%----%>
        <%----%>
        <%----%>
        <%--<li class="">--%>
            <%--<a href="/user/13?page=4">4</a>--%>
        <%--</li>--%>
        <%----%>
        <%----%>
        <%----%>
        <%--<li class="">--%>
            <%--<a href="/user/13?page=5">5</a>--%>
        <%--</li>--%>
        <%----%>
        <%----%>
        <%----%>
        <%--<li>--%>
            <%--<a href='#'>...</a>--%>
        <%--</li>--%>
        <%----%>
        <%----%>
        <%----%>
        <%--<li class="">--%>
            <%--<a href="/user/13?page=16">16</a>--%>
        <%--</li>--%>
        <%----%>
        <%----%>
        <%----%>
        <%--<li class="">--%>
            <%--<a href="/user/13?page=17">17</a>--%>
        <%--</li>--%>
        <%----%>
        <%----%>
        <%----%>
        <%--<li class="">--%>
            <%--<a aria-label="Next" href="/user/13?page=2">--%>
                <%--<span aria-hidden="true">下一页</span>--%>
            <%--</a>--%>
        <%--</li>--%>
        <%----%>
    <%--</ul>--%>
<%--</nav>--%>


				
            </div>
        </div>
    </div>
</div>

        </div>
        <div class="col-md-3 layout-side">
            
    


<a class="side-sda apply-git" href="http://git.shiyanlou.com/shilei" target="_blank">
    <img src="../../../static/img/my-git.png">
    <span>代码库</span>
</a>








            
            <div class="sidebox user-visitors">
                <div class="sidebox-header">
                    <h4 class="sidebox-title">最近来访</h4>
                </div>
                <div class="sidebox-body">
                    
                    <div class="col-dm-12">
                        <a class="row" href="/user/345538">
                            <div class="col-xs-2">
                                <img src="https://dn-simplecloud.shiyanlou.com/gravatar345538.png?v=1483141057082&amp;imageView2/1/w/200/h/200">
                            </div>
                            <div class="col-xs-10">
                                <div>PKU_Hao</div>
                                <div>12分钟前</div>
                            </div>
                        </a>
                    </div>
                    
                    <div class="col-dm-12">
                        <a class="row" href="/user/237882">
                            <div class="col-xs-2">
                                <img src="https://dn-simplecloud.shiyanlou.com/gravatarDQJPW4T4RJZF.jpg">
                            </div>
                            <div class="col-xs-10">
                                <div>vanxv</div>
                                <div>2小时前</div>
                            </div>
                        </a>
                    </div>
                    
                    <div class="col-dm-12">
                        <a class="row" href="/user/262386">
                            <div class="col-xs-2">
                                <img src="https://dn-simplecloud.shiyanlou.com/gravatarKAYZQC5G6TJY.jpg">
                            </div>
                            <div class="col-xs-10">
                                <div>LIKIKI</div>
                                <div>5小时前</div>
                            </div>
                        </a>
                    </div>
                    
                    <div class="col-dm-12">
                        <a class="row" href="/user/126970">
                            <div class="col-xs-2">
                                <img src="https://dn-simplecloud.shiyanlou.com/gravatarRKEXQSX3FDLK.jpg">
                            </div>
                            <div class="col-xs-10">
                                <div>星_尘</div>
                                <div>6小时前</div>
                            </div>
                        </a>
                    </div>
                    
                    <div class="col-dm-12">
                        <a class="row" href="/user/309116">
                            <div class="col-xs-2">
                                <img src="https://dn-simplecloud.shiyanlou.com/gravatarM8EVLA6XFKRH.jpg">
                            </div>
                            <div class="col-xs-10">
                                <div>大风车</div>
                                <div>10小时前</div>
                            </div>
                        </a>
                    </div>
                    
                    <div class="col-dm-12">
                        <a class="row" href="/user/140480">
                            <div class="col-xs-2">
                                <img src="https://dn-simplecloud.shiyanlou.com/gravatar9UBRP2BQR68H.jpg">
                            </div>
                            <div class="col-xs-10">
                                <div>lushengwen</div>
                                <div>1天前</div>
                            </div>
                        </a>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="message-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title">发送消息给 石头山</h4>
            </div>
            <div class="modal-body">
                <textarea style="width:100%; min-height:100px; max-width:100%;"></textarea>
            </div>
            <div class="modal-footer">
                <button class="btn btn-default" data-dismiss="modal">取消</button>
                <button class="btn btn-primary send-btn">发送</button>
            </div>
        </div>
    </div>
</div>

<div id="jinja-data"
    data-userlab-id=""
    data-authenticated="false"
    data-infotype=""
    data-request-friend-url="/user/friends/add"
    data-sendmessage-url="/user/messages/send"
    data-site-type="0"
    data-search-user-url="/user/search"
    data-request-friend-url="/user/friends/add"
    data-send-message-url="/user/messages/send"
    data-messages-url="/user/messages"
    data-accept-friend-request-url="/user/friends/accept"
    data-reject-friend-request-url="/user/friends/reject"

	data-user-email=""
	data-can-startlab="false"
    data-is-email-validated="false"
	data-qiniu-token-url="/api/qiniu/token"
	data-gravatar-url="/user/profile/gravatar"
	data-resend-email="/resendemail"
	data-site-type="0"

    data-current-username=""
    data-current-userid=""
    data-username="石头山"
    data-userid="13"
    data-code-url="/user/sms/code"
    data-account-phone="/user/account/phone"
    data-account-email="/user/account/email"
    data-account-password="/user/account/password"
    data-account-git="/user/account/git"

	
    ></div>


	
	

	<div class="modal fade" id="invite-user" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title">邀请好友，双方都可获赠实验豆！</h4>
				</div>
				<div class="modal-body">
                    
                        <p><h4><a href="#sign-modal" data-toggle="modal" data-sign="signin">登录</a>后邀请好友注册，您和好友将分别获赠3个实验豆！</h4></p>
                    
					<div id="msg-modal"></div>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="flash-message" tabindex="-1" role="dialog">
		<div class="modal-dialog" rolw="document">
		</div>
	</div>
	<div class="modal fade" id="modal-message" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title">注意</h4>
				</div>
				<div class="modal-body">
				</div>
				<div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary confirm" data-dismiss="modal">确定</button>
				</div>
			</div>
		</div>
	</div>
    

    
    

	
		
			
		
	

    <div class="modal fade" id="sign-modal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <button type="button" class="close-modal" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <div class="modal-body">
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active">
                        <a href="#signin-form" aria-controls="signin-form" role="tab" data-toggle="tab">登录</a>
                    </li>
                    <li role="presentation">
                        <a href="#signup-form" aria-controls="signup-form" role="tab" data-toggle="tab">注册</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="signin-form">
                        <form action="/login" method="post">
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-envelope" style="margin:0;"></i>
                                    </div>
                                    <input type="email" name="login" class="form-control" placeholder="请输入邮箱">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-lock" style="margin:0;"></i>
                                    </div>
                                    <input type="password" name="password" class="form-control" placeholder="请输入密码">
                                </div>
                            </div>
                            <div class="form-inline verify-code-item" style="display:none;">
                                <div class="form-group">
                                    <div class="input-group">
                                        <input type="text" name="captcha_v" class="form-control" placeholder="请输入验证码">
                                    </div>
                                </div>
                                <img class="verify-code" src="" source="https://www.shiyanlou.com/captcha.gif">
                            </div>
                            <div class="form-group remember-login">
                                <input name="remember" type="checkbox" value="y"> 下次自动登录
                                <a class="pull-right" href="../../reset_password/index.html">忘记密码？</a>
                            </div>
                            <div class="form-group">
                                <input class="btn btn-primary" name="submit" type="submit" value="进入实验楼">
                            </div>
                            <div class="form-group widget-signin">
                                <span>快速登录</span>
                                <a href="/auth/qq?next="><i class="fa fa-qq"></i></a>
                                <a href="/auth/weibo?next="><i class="fa fa-weibo"></i></a>
                                <a href="/auth/weixin?next="><i class="fa fa-weixin"></i></a>
                                <a href="/auth/github?next="><i class="fa fa-github"></i></a>
                                <a href="/auth/renren?next="><i class="fa fa-renren"></i></a>
                            </div>
                            <div class="form-group error-msg">
                                <div class="alert alert-danger" role="alert"></div>
                            </div>
                        </form>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="signup-form">
                        <form action="/register" method="post">
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-envelope" style="margin:0;"></i>
                                    </div>
                                    <input type="email" name="email" class="form-control" placeholder="请输入邮箱">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-lock" style="margin:0;"></i>
                                    </div>
                                    <input type="password" name="password" class="form-control" placeholder="请输入密码">
                                </div>
                            </div>
                            <div class="form-inline">
                                <div class="form-group">
                                    <div class="input-group">
                                        <input type="text" name="captcha_v" class="form-control" placeholder="请输入验证码">
                                    </div>
                                </div>
                                <img class="verify-code" src="" source="https://www.shiyanlou.com/captcha.gif">
                            </div>
                            <div class="form-group">
                                <input class="btn btn-primary" name="submit" type="submit" value="注册">
                            </div>
                            <div class="form-group agree-privacy">
                                注册表示您已经同意我们的<a href="../../privacy/index.html" target="_blank">隐私条款</a>
                            </div>
                            <div class="form-group widget-signup">
                                <span>快速注册</span>
                                <a href="/auth/qq?next="><i class="fa fa-qq"></i></a>
                                <a href="/auth/weibo?next="><i class="fa fa-weibo"></i></a>
                                <a href="/auth/weixin?next="><i class="fa fa-weixin"></i></a>
                                <a href="/auth/github?next="><i class="fa fa-github"></i></a>
                                <a href="/auth/renren?next="><i class="fa fa-renren"></i></a>
                            </div>
                            <div class="form-group error-msg">
                                <div class="alert alert-danger" role="alert"></div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


    <div id="base-data"
        
        
            data-flash="false"
            
        
        
        data-is-login=false
        
        data-is-jwt=true
        data-socket-url="wss://comet.shiyanlou.com"
        data-msg-user=""
        data-msg-system=""
    ></div>

    <script src="../../../static/app/dest/lib/lib.js?=2016121272249"></script>
    <script src="../../../static/static/jquery/2.2.4/jquery.min.js"></script>
    <script src="../../../static/static/ace/1.2.5/ace.js"></script>
    <script src="../../../static/static/aliyun/aliyun-oss-sdk-4.3.0.min.js"></script>
    <script src="../../../static/static/highlight.js/9.8.0/highlight.min.js"></script>
    <script src="../../../static/static/jspdf/1.2.61/jspdf.min.js"></script>
    <script src="../../../static/static/plupload/2.1.9/js/plupload.full.min.js"></script>
    <script src="../../../static/static/zeroclipboard/2.2.0/ZeroClipboard.min.js"></script>
    <script src="../../../static/static/videojs/video.min.js"></script>
    <script src="../../../static/static/bootstrap-tour/0.11.0/js/bootstrap-tour.min.js"></script>
    <script src="../../../static/static/bootstrap-table/1.11.0/bootstrap-table.min.js"></script>
    <script src="../../../static/static/bootstrap-table/1.11.0/locale/bootstrap-table-zh-CN.min.js"></script>
    <script src="../../../static/static/bootstrap-table/1.11.0/extensions/filter-control/bootstrap-table-filter-control.min.js"></script>

    <script src="../../../static/static/ravenjs/3.7.0/raven.min.js"></script>
    <script>
        Raven.config('https://bc3878b7ed0a4468a65390bd79e6e73f@sentry.shiyanlou.com/5', {
            release: '3.12.13'
        }).install();
    </script>

    
<script src="../../../static/app/dest/user/index.js?=2016121272249"></script>
            
<div class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-4 clearfix footer-col">
                <img src="../../../static/img/logo_03.png">
                <div class="footer-slogan">动手做实验，轻松学编程</div>
                <div class="col-xs-2">
                    <div class="social-item footer-weixin-item">
                        <i class="fa fa-weixin"></i>
                        <div class="footer-weixin">
                            <img src="../../../static/img/footer-weixin.png">
                        </div>
                    </div>
                </div>
                <div class="col-xs-2">
                    <div class="social-item footer-qq-item">
                        <i class="fa fa-qq"></i>
                    </div>
                </div>
                <div class="col-xs-2">
                    <div class="social-item footer-weibo-item">
                        <a href="http://weibo.com/shiyanlou2013" target="_blank">
                            <i class="fa fa-weibo"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-xs-6 col-sm-3 col-md-2 footer-col">
                <div class="col-title">公司</div>
                <a href="../../aboutus/index.html" target="_blank">关于我们</a><br>
                <a href="../../contact/index.html" target="_blank">联系我们</a><br>
                <a href="http://www.simplecloud.cn/jobs.html" target="_blank">加入我们</a><br>
                <a href="https://blog.shiyanlou.com" target="_blank">技术博客</a><br>
            </div>
            <div class="col-xs-6 col-sm-3 col-md-2 footer-col">
                <div class="col-title">合作</div>
                <a href="../../contribute/index.html" target="_blank">我要投稿</a><br>
                <a href="../../../static/labs/index.html" target="_blank">教师合作</a><br>
                <a href="../../edu/index.html" target="_blank">高校合作</a><br>
                <a href="../../friends/index.html" target="_blank">友情链接</a>
            </div>
            <div class="col-xs-6 col-sm-3 col-md-2 footer-col">
                <div class="col-title">服务</div>
                <a href="../../bootcamp/index.html" target="_blank">实战训练营</a><br>
                <a href="../../vip/index.html" target="_blank">会员服务</a><br>
                <a href="../../courses/reports/index.html" target="_blank">实验报告</a><br>
                <a href="../../questions/index.html?tag=%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98" target="_blank">常见问题</a><br>
                <a href="../../privacy/index.html" target="_blank">隐私条款</a>
            </div>
            <div class="col-xs-6 col-sm-3 col-md-2 footer-col">
                <div class="col-title">学习路径</div>
                <a href="../../paths/python/index.html" target="_blank">Python学习路径</a><br>
                <a href="../../paths/linuxdev/index.html" target="_blank">Linux学习路径</a><br>
                <a href="../../paths/bigdata/index.html" target="_blank">大数据学习路径</a><br>
                <a href="../../paths/java/index.html" target="_blank">Java学习路径</a><br>
                <a href="../../paths/php/index.html" target="_blank">PHP学习路径</a><br>
                <a href="../../paths/index.html" , target="_blank">全部</a>
            </div>
        </div>
    </div>
    <div class="text-center copyright">
        <span>Copyright @2013-2016 实验楼在线教育</span>
        <span class="ver-line"> | </span>
        <a href="http://www.miibeian.gov.cn/" target="_blank">蜀ICP备13019762号</a>
        <script type="text/javascript">
            var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
            document.write(unescape("%3Cspan id='cnzz_stat_icon_5902315'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "v1.cnzz.com/stat.php%3Fid%3D5902315' type='text/javascript'%3E%3C/script%3E"));
        </script>
        <script>
            var _hmt = _hmt || [];
            (function() {
             var hm = document.createElement("script");
             hm.src = "//hm.baidu.com/hm.js?6eb47a3aeda6ea31fa53985fdfdc78e8";
             var s = document.getElementsByTagName("script")[0];
             s.parentNode.insertBefore(hm, s);
             })();
        </script>
        <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
         (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
         m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
         })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
        ga('create', 'UA-89338452-1', 'auto');
        ga('send', 'pageview');
        </script>
    </div>
</div>

            
        
	
</body>
</html>
