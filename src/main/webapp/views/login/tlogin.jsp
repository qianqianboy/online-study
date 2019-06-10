<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><spring:message code="title"/> | <spring:message code="login"/></title>
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
                    <h1><strong><spring:message code="title"/> |</strong>
                        <spring:message code="login"/>
                    </h1>
                    <div class="description">
                        <%--<p>--%>
                            <%--<spring:message code="tag"/>--%>
                        <%--</p>--%>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 form-box">
                    <div class="form-top">
                        <div class="form-top-left">
                            <h3>
                               欢迎老师传课！您辛苦啦！
                            </h3>
                            <%--<p>请输入邮箱和密码进行登录</p>--%>
                        </div>
                        <div class="form-top-right">
                            <i class="fa fa-key"></i>
                        </div>
                    </div>
                    <div class="form-bottom">
                        <form role="form" id="login-form" action="/teacher/login" method="post" class="login-form">
                            <div class="form-group">
                                <label class="sr-only" for="form-username">教师工号</label>
                                <input type="text" name="email" placeholder="请输入您的教师工号" class="form-username form-control" id="form-username">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="form-password">密码</label>
                                <input type="password" name="password" placeholder="<spring:message code="passsword"/>" class="form-password form-control" id="form-password">
                            </div>
                            <button type="submit" class="btn" style="background-color: rgb(17,170,140);"><spring:message code="loginbtn"/></button>
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
