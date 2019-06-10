<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
        <title>全部 - 课程</title>
	<link rel="shortcut icon" href="../favicon.ico">
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
            <a class="navbar-brand" href="/">
                <img src="/static/img/logo.png"width="180">
            </a>
        </div>
        <div class="collapse navbar-collapse" id="header-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="/">首页</a>
                </li>
                <li class="dropdown ">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                        课程
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="" href="/course/show/1">全部课程</a></li>
                        <li><a class="" href="/views/courses/index.jsp?status=preview">即将上线</a></li>
                        <li><a class="" href="/views/developer/index.html">开发者工具</a></li>
                    </ul>
                </li>
                <li class="">
                    <a href="http://www.jluzh.com/">关于我们</a>
                </li>
                <li class="">
                    <a href="/teacher/tologin">我是老师</a>
                </li>
            </ul>
            <div class="navbar-right btns">
            <c:if test="${sessionScope.STUDENT!=null}">
            <li class="dropdown ">
                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                    <img src="/test/${sessionScope.STUDENT.image}" width="40" height="50">
                    <span class="caret"></span>
                </a>
                <ul class="dropdown-menu">
                    <li><a class="" href="/student/info">个人中心</a></li>
                    <li><a class="" href="/student/mycourses/${sessionScope.STUDENT.id}">我的收藏</a></li>
                    <li><a class="" href="/student/logout">注销</a></li>
                </ul>
            </li>
            </c:if>
                <c:if test="${sessionScope.STUDENT==null}">

                <a class="btn btn-default navbar-btn sign-in" data-sign="signin" href="/student/tologin" data-toggle="modal">登录</a>
                <a class="btn btn-default navbar-btn sign-up" data-sign="signup" href="/student/toregister" data-toggle="modal">注册</a>
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
<div class="container layout layout-margin-top">
    <div class="row">
        <div class="col-md-9 layout-body">
    <div class="content">
        <div class="row course-cates">
            <div class="col-md-1 course-cates-title">标签：</div>
            <div class="col-md-11 course-cates-content">
                <a class="active" href="/course/show/1">全部</a>
                
                    <a class="" href="/subject/findByTitle/Python/1">Python</a>
                
                    <a class="" href="/subject/findByTitle/C++/1">C++</a>
                
                    <a class="" href="/subject/findByTitle/Linux/1">Linux</a>
                
                    <a class="" href="/subject/findByTitle/Web/1">Web</a>
                
                    <a class="" href="/subject/findByTitle/PHP/1"/>PHP</a>
                
                    <a class="" href="/subject/findByTitle/Java/1">Java</a>
                
                    <a class="" href="/subject/findByTitle/NodeJS/1">NodeJS</a>
                
                    <a class="" href="/subject/findByTitle/Android/1">Android</a>
                
                    <a class="" href="/subject/findByTitle/GO/1">GO</a>
                
                    <a class="" href="/subject/findByTitle/Spark/1">Spark</a>
                
                    <a class="" href="/subject/findByTitle/Hadoop/1">Hadoop</a>
                
                    <a class="" href="/subject/findByTitle/HTML5/1">HTML5</a>
                
                    <a class="" href="/subject/findByTitle/Scala/1">Scala</a>
                
                    <a class="" href="/subject/findByTitle/Ruby/1">Ruby</a>
                
                    <a class="" href="/subject/findByTitle/R/1">R</a>
                
                    <a class="" href="/subject/findByTitle/Git/1">Git</a>
                
                    <a class="" href="/subject/findByTitle/SQL/1">SQL</a>
                
                    <a class="" href="/subject/findByTitle/NoSQL/1">NoSQL</a>
                
                    <a class="" href="/subject/findByTitle/算法/1">算法</a>
                
                    <a class="" href="/subject/findByTitle/Docker/1">Docker</a>
                
                    <a class="" href="/subject/findByTitle/Swift/1">Swift</a>
                
                    <a class="" href="/subject/findByTitle/区块链/1">区块链</a>
                
                    <a class="" href="/subject/findByTitle/Windows/1">Windows</a>
                
            </div>
        </div>
    </div>
    <div class="content position-relative">

        <c:if test="${hottest==null}">
        <%--<ul class="nav nav-tabs" role="tablist">--%>
                <%--<li class="active"}><a href="/course/show/${pageInfo.pageNum}">最新</a></li>--%>
                <%--<li class=""><a href="/course/showByPopular/${pageInfo.pageNum}">最热</a></li>--%>
        <%--</ul>--%>
        <div class="clearfix"></div>
        <div class="search-result"></div>
        <div class="row">

            <c:forEach var="course" items="${pageInfo.list}">
                <div class="col-md-4 col-sm-6  course">
                    <a class="course-box" href="/course/findById/${course.id}">
                        <div class="sign-box">
                            <i class="fa fa-star-o course-follow pull-right"
                               data-follow-url="/courses/63/follow"
                               data-unfollow-url="/courses/63/unfollow"  style="display:none"  ></i>
                        </div>

                        <div class="course-img">
                            <img alt="${course.title}" src="/test/${course.image}">
                        </div>
                        <div class="course-body">
                            <span class="course-title" data-toggle="tooltip" data-placement="bottom" title="${course.title}">${course.title}</span>
                        </div>
                        <div class="course-footer">
			<span class="course-per-num pull-left">
                <i class="fa fa-users"></i>
                收藏量：${course.followedNum}
			</span><span class="course-per-num pull-right">
                <i class="fa fa-users"></i>
                作者：${course.teacher.name}
			</span>
                        </div>
                    </a>
                </div>
            </c:forEach>
        </div>
        

<nav class="pagination-container">
    <ul class="pagination">
        

            <c:if test="${pageInfo.pageNum==1}">
                <li class="disabled">
                <a href="/course/search?queryText=${queryText}&page=1"  aria-label="Previous">
                    <span aria-hidden="true">上一页</span>
                </a>
                </li>
            </c:if>
            <c:if test="${pageInfo.pageNum!=1}">
                <li>
                <a href="/course/search?queryText=${queryText}&page=${pageInfo.prePage}" aria-label="Previous">
                    <span aria-hidden="true">上一页</span>
                </a>
                </li>
            </c:if>


        <li class="active disabled">
            <a href="/course/search?queryText=${queryText}&page=${pageInfo.pageNum}" name="page">${pageInfo.pageNum}</a>
        </li>

            <c:if test="${pageInfo.isLastPage}">
        <li class="disabled">
                <a href="/course/search?queryText=${queryText}&page=${pageInfo.pages}" class="disabled" aria-label="Previous">
                    <span aria-hidden="true">下一页</span>
                </a>
        </li>
            </c:if>
            <c:if test="${!pageInfo.isLastPage}">
                <li>
                <a aria-label="Next" href="/course/search?queryText=${queryText}&page=${pageInfo.nextPage}">
                    <span aria-hidden="true">下一页</span>
                </a>
                </li>
            </c:if>


        <li class="disabled">
            <a href="">
                <span aria-hidden="true"> 共 ${pageInfo.total} 个课程</span>
            </a>

        </li>

    </ul>
</nav>
        </c:if>
    </div>
        </div>
        <div class="col-md-3 layout-side">
<div class="panel panel-default panel-userinfo">
    <div class="panel-body body-userinfo">
        <div class="media userinfo-header">
            <div class="media-left">
                <div class="user-avatar">
                    
                     <a class="avatar" href="#sign-modal" data-toggle="modal" data-sign="signin">
                         <img class="circle" src="../../../static/img/logo-grey.png">
                     </a>
                      
                </div>
             </div>
            <div class="media-body">
                
                 <span class="media-heading username">欢迎你！</span>
                 <p class="vip-remain">学习是一种修养</p>
                 
            </div>
        </div> 
        
        <div class="row userinfo-data">
            
            <hr>
            <div class="btn-group-lr">
            <a href="#sign-modal" type="button" class="btn btn-success col-md-5 col-xs-6 login-btn" data-toggle="modal" data-sign="signin">登录</a>
            <a href="#sign-modal" type="button" class="btn btn-success col-md-5 col-xs-6 col-md-offset-1 register-btn" data-toggle="modal" data-sign="signup">注册</a>
            </div>
            
        </div>
        
        <div class="userinfo-footer row">
            <div class="col-md-6 col-xs-6 pos-left">
                
                <a href="#sign-modal" data-toggle="modal" data-sign="signin"><span class="glyphicon glyphicon-bookmark"></span> </a>
                
            </div>
            <div class="col-md-6 col-xs-6 pos-right">
                <a href="/contribute" target="_blank"><span class="glyphicon glyphicon-send"></span> </a>
            </div>

            <div id="join-private-course" class="modal fade words-ctrl" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title"></h4>
                        </div>
                        <div class="modal-body">
                            <div style="margin:15px 0; font-size:16px;">输入教师提供的私有课程码可以加入教师的私有课程。</div>
                            <form id="private-course-form" method="POST" action="/courses/join">
                                <div class="form-group">
                                    <label for="code">邀请码</label>
                                    <input class="form-control" id="code" name="code" type="text" value="">
                                    <input name="_csrf_token" type=hidden value="1483780974##87f89328c5616669f00302a263fe9061bb852818">
                                </div>
                            </form>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                            <button type="button" class="btn btn-primary" onclick="document.getElementById('private-course-form').submit();">确定</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="sidebox">
    
	<div class="sidebox-header">
		<h4 class="sidebox-title">最热课程</h4>
	</div>
	<div class="sidebox-body course-content side-list-body">
        <a href="/paths/python"><img style="width:25px;height:25px" src="../../../static/img/1471513769430.png"> Python</a>
        <a href="/paths/bigdata"><img style="width:25px;height:25px" src="../../../static/img/1471513926288.png"> 大数据</a>
        <a href="/paths/cpp"><img style="width:25px;height:25px" src="../../../static/img/1471513793360.png"> C++ 研发</a>
        <a href="/paths/security"><img style="width:25px;height:25px" src="../../../static/img/1471513867033.png"> 信息安全</a>
        <a href="/paths/linuxsys"><img style="width:25px;height:25px" src="../../../static/img/1471514004752.png"> Linux 运维</a>
	</div>
    
</div>

<div class="side-image side-qrcode">
    <img src="../../../static/img/ShiyanlouQRCode.png">
    <div class="side-image-text">关注公众号，手机看教程</div>
</div>

        </div>
    </div>
</div>


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
                        <form action="/student/login" method="post">
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
                            <div class="form-inline verify-code-item" style="display:none;">

                            </div>
                            <div class="form-group remember-login">
                                <input name="remember" type="checkbox" value="y"> 下次自动登录
                                <a class="pull-right" href="../reset_password/index.html">忘记密码？</a>
                            </div>
                            <div class="form-group">
                                <input class="btn btn-primary" name="submit" type="submit" value="登录">
                            </div>
                            <%--<div class="form-group error-msg">--%>
                                <%--<div class="alert alert-danger" role="alert"></div>--%>
                            <%--</div>--%>
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
                                <input class="btn btn-primary" name="submit" type="submit" value="注册" id="register">
                            </div>
                            <div class="form-group agree-privacy">
                                注册表示您已经同意我们的<a href="../privacy/index.html" target="_blank">隐私条款</a>
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

    




<div id="jinja-data"
    data-loginurl="/login"
    data-private-course-url="/courses/join"
    data-site-type="0"
    
></div>

<script src="../../../static/app/dest/course/index.js?=2016121272249"></script>


	
        
            
            
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
                <a href="http://www.jluzh.com/" target="_blank">关于我们</a><br>
                <a href="../contact/index.html" target="_blank">联系我们</a><br>
                <a href="http://www.simplecloud.cn/jobs.html" target="_blank">加入我们</a><br>
                <a href="https://blog.shiyanlou.com" target="_blank">技术博客</a><br>
            </div>
            <div class="col-xs-6 col-sm-3 col-md-2 footer-col">
                <div class="col-title">合作</div>
                <a href="../contribute/index.html" target="_blank">我要投稿</a><br>
                <a href="../../static/labs/index.html" target="_blank">教师合作</a><br>
                <a href="../edu/index.html" target="_blank">高校合作</a><br>
                <a href="../friends/index.html" target="_blank">友情链接</a>
            </div>
            <div class="col-xs-6 col-sm-3 col-md-2 footer-col">
                <div class="col-title">服务</div>
                <a href="../bootcamp/index.html" target="_blank">实战训练营</a><br>
                <a href="../vip/index.html" target="_blank">会员服务</a><br>
                <a href="../courses/reports/index.html" target="_blank">实验报告</a><br>
                <a href="../questions/index.html?tag=%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98" target="_blank">常见问题</a><br>
                <a href="../privacy/index.html" target="_blank">隐私条款</a>
            </div>
            <div class="col-xs-6 col-sm-3 col-md-2 footer-col">
                <div class="col-title">学习路径</div>
                <a href="../paths/python/index.html" target="_blank">Python学习路径</a><br>
                <a href="../paths/linuxdev/index.html" target="_blank">Linux学习路径</a><br>
                <a href="../paths/bigdata/index.html" target="_blank">大数据学习路径</a><br>
                <a href="../paths/java/index.html" target="_blank">Java学习路径</a><br>
                <a href="../paths/php/index.html" target="_blank">PHP学习路径</a><br>
                <a href="../paths/index.html" , target="_blank">全部</a>
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
