<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Cache-Control" content="o-transform">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <meta name="csrf-token" content="1483758872##fd2cac389b2b7c009a744bcaecaa41d71592cfe8">
    <title>在线学习系统</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="stylesheet" href="/static/static/font-awesome//4.7.0/css/font-awesome.min.css">
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
        .en-footer {
            padding: 30px;
            text-align: center;
            font-size: 14px;
        }
    </style>
    <style type="text/css">
        .navbar-banner {
            margin-top: 50px;
            background: url("/static/img/004.png");
            background-size: cover;
            backgtound-repeat: no-repeat;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top header">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#header-navbar-collapse" aria-expanded="false">
                <span class="sr-only">在线学习平台</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">
                <img src="/static/img/logo.png" width="180">
            </a>
        </div>
        <div class="collapse navbar-collapse" id="header-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="/">首页</a>
                </li>
                <li class="dropdown  ">
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
                    <li class="dropdown">
                        <a href="/student/info" class="dropdown-toggle" data-toggle="dropdown">
                            <p style="color: #0ace9d">欢迎你，${sessionScope.STUDENT.name}</p>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="" href="/student/info">个人中心</a></li>
                            <li><a class="" href="/student/courses">我的课程</a></li>
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

<div class="navbar-banner layout-no-margin-top">
    <div class="banner-container">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <a class="container-title">
                        <img src="/static/img/container-title-2.png"/>
                    </a>
                    <div style="margin-top:24px;">
                        <a id="course-btn" class="course-btn btn btn-lg" href="/course/show/1">进入课程</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="introduce-container" id="fourFeatures">
    <div class="container">
        <div class="row">
            <div class="introduce-unit col-sm-6 col-md-3">
                <div><a class="introduce-img"><img src="/static/img/introduceContainer1.gif"/></a></div>
                <div><span class="introduce-span">丰富全面的计算机实验课程</span></div>
            </div>
            <div class="introduce-unit col-sm-6 col-md-3">
                <div><a class="introduce-img"><img src="/static/img/introduceContainer2.gif"/></a></div>
                <div><span class="introduce-span">构建良好编程生态</span></div>
            </div>
            <div class="introduce-unit col-sm-6 col-md-3">
                <div><a class="introduce-img"><img src="/static/img/introduceContainer3.gif"/></a></div>
                <div><span class="introduce-span">每天一个项目课，丰富你的项目经验</span></div>
            </div>
            <div class="introduce-unit col-sm-6 col-md-3">
                <div><a class="introduce-img"><img src="/static/img/introduceContainer4.gif"/></a></div>
                <div><span class="introduce-span">有效学习时间，真实记录你的代码生涯</span></div>
            </div>
        </div>
    </div>
</div>

<script src="/views/app/dest/lib/lib.js?=2016121272249"></script>
<script src="/views/static/jquery/2.2.4/jquery.min.js"></script>
<script src="/views/static/ace/1.2.5/ace.js"></script>
<script src="/views/static/aliyun/aliyun-oss-sdk-4.3.0.min.js"></script>
<script src="/views/static/highlight.js/9.8.0/highlight.min.js"></script>
<script src="/views/static/jspdf/1.2.61/jspdf.min.js"></script>
<script src="/views/static/plupload/2.1.9/js/plupload.full.min.js"></script>
<script src="/views/static/zeroclipboard/2.2.0/ZeroClipboard.min.js"></script>
<script src="/views/static/videojs/video.min.js"></script>
<script src="/views/static/bootstrap-tour/0.11.0/js/bootstrap-tour.min.js"></script>
<script src="/views/static/bootstrap-table/1.11.0/bootstrap-table.min.js"></script>
<script src="/views/static/bootstrap-table/1.11.0/locale/bootstrap-table-zh-CN.min.js"></script>
<script src="/views/static/bootstrap-table/1.11.0/extensions/filter-control/bootstrap-table-filter-control.min.js"></script>

<script src="/views/static/ravenjs/3.7.0/raven.min.js"></script>
<div id="jinja-data"
     data-post-url="/registercheck"
></div>
<script src="app/dest/frontend/index.js?=2016121272249"></script>


<div class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-6 clearfix footer-col">
                <img src="/static/img/logo.png" width="180">
            </div>
            <div class="col-xs-12 col-sm-8 col-md-5 footer-col">
                <div class="footer-slogan">在线学习，轻松编程</div>
            </div>
        </div>
    </div>
    <div class="text-center copyright">
        <span>Copyright @2019 吉林大学珠海学院在线学习平台</span>
    </div>
</div>
</body>
</html>
