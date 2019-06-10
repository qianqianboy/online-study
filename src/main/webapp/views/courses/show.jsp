<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
        <title>${course.title} - 在线学习平台</title>
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
<link rel="stylesheet" href="../../../static/restatic/js/libs/marked/katex/katex.min.css">
<style>
    .bootcamp-infobox {
        margin: 50px 0 0;
    }
    .invite-friends-link {
        margin-top:10px;
        padding-left:8px;
    }
    .invite-friends-link input {
        margin-left:-5px;
    }
    .invite-friends-link button {
        float:left;
        margin-top:5px;
        margin-left:-5px;
    }
    .invite-friends-link .copy-msg {
        float:left;
        margin-top:10px;
        margin-left:20px;
        color:#42b1ad;
    }
    p.join-vip-faq {
        margin-top:20px;
        margin-bottom:-50px;
        font-size:13px;
    }
    p.join-vip-faq img {
        height:13px;
        width:13px;
        margin-top:-2px;
    }
    a.vip-without-bean {
        font-size:18px;
        line-height:30px;
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
                <li class="dropdown active">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                        课程
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="active" href="/course/show/1" >全部课程</a></li>
                        <li><a class="" href="index.jsp?status=preview" >即将上线</a></li>
                        <li><a class="" href="../developer/index.html">开发者</a></li>
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



            <form class="navbar-form navbar-right" action="../search" method="get" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" name="search" autocomplete="off" placeholder="搜索 课程/老师">
                </div>
            </form>
        </div>
    </div>
</nav>


<div class="container layout layout-margin-top">
    
<ol class="breadcrumb">
    <li><a href="/course/show/1">全部课程</a></li>
    <li>
    <a href="/subject/findByTitle/${course.subject.title}/1">${course.subject.title}</a>
        <a id="collected" href="/student/isCollected?courseId=${course.id}&studentId=${sessionScope.STUDENT.id}">收藏 </a>
    </li>
    <li class="disabled">
        <a href="">
        ${course.title}
        </a>
    </li>
</ol>

    <div class="row">
        <div class="col-md-9 layout-body">
    <div class="side-image side-image-mobile">
        <img src="https://dn-simplecloud.shiyanlou.com/ncn1.jpg?imageView2/0/h/300">
    </div>
    <div class="content course-infobox">
        <div class="clearfix course-infobox-header">
            <h4 class="pull-left course-infobox-title">
                <span>${course.title}</span>
            </h4>
            <c:if test="${isCollected==null}">
            <div class="col-lg-3 lab-item-ctrl">
                <!--<a class="btn btn-default" href="#sign-modal" data-toggle="modal" data-sign="signin" data-next="/courses/1">查看文档</a>-->
                <a class="btn btn-primary" href="/student/collection?courseId=${course.id}&studentId=${sessionScope.STUDENT.id}">加入收藏</a>
            </div>
            </c:if>
            <c:if test="${isCollected=='已收藏'}">
            <div class="col-lg-3 lab-item-ctrl">
                <!--<a class="btn btn-default" href="#sign-modal" data-toggle="modal" data-sign="signin" data-next="/courses/1">查看文档</a>-->
                <a class="btn btn-danger" href="/student/cancel?courseId=${course.id}&studentId=${sessionScope.STUDENT.id}">取消收藏</a>
            </div>
            </c:if>
            <div class="pull-right course-infobox-follow"
                data-follow-url="/courses/1/follow"
                data-unfollow-url="/courses/1/unfollow">
                <span class="course-infobox-followers">${course.followedNum}</span>
                <span>人收藏</span>
                <i class="fa fa-star-o" data-next="/login?next=%2Fcourses%2F1"></i>
                
            </div>

        </div>
        <div class="clearfix course-infobox-body">
            <%--<div class="course-infobox-content">--%>
            <%--<p>要在实验楼愉快地学习，先要熟练地使用 Linux，本实验介绍 Linux 基本操作，shell 环境下的常用命令。</p>--%>
            <%--</div>--%>
            <%--<div class="course-infobox-progress">--%>
                    <%--<div class="course-progress-new"></div>--%>
                    <%--<div class="course-progress-new"></div>--%>
                    <%--<div class="course-progress-new"></div>--%>
                    <%--<div class="course-progress-new"></div>--%>
                    <%--<div class="course-progress-new"></div>--%>
                <%----%>
                    <%--<div class="course-progress-new"></div>--%>
                <%----%>
                    <%--<div class="course-progress-new"></div>--%>
                <%----%>
                    <%--<div class="course-progress-new"></div>--%>
                <%----%>
                    <%--<div class="course-progress-new"></div>--%>
                <%----%>
                    <%--<div class="course-progress-new"></div>--%>
                <%----%>
                    <%--<div class="course-progress-new"></div>--%>
                <%----%>
                    <%--<div class="course-progress-new"></div>--%>
                <%----%>
                    <%--<div class="course-progress-new"></div>--%>
                <%----%>
                    <%--<div class="course-progress-new"></div>--%>
                <%----%>
                    <%--<div class="course-progress-new"></div>--%>
                <%----%>
                    <%--<div class="course-progress-new"></div>--%>
                <%----%>
                    <%--<div class="course-progress-new"></div>--%>
                <%----%>
                <%--<span>（0/17）</span>--%>
            <%--</div>--%>
            <%----%>
                <%--<div class="pull-right course-infobox-price">--%>
                <%--</div>--%>
        </div>
        
        <!--<div class="clearfix course-infobox-footer">-->
            <!---->
            <!--<div class="pull-right course-infobox-learned">85243 人学过</div>-->
        <!--</div>-->
        
    </div>

    <div class="content">
        <ul class="nav nav-tabs" role="tablist">
            
            <li role="presentation" class="active">
                <a href="#labs" aria-controls="labs" role="tab" data-toggle="tab">章节列表</a>
            </li>
            
            <li role="presentation">
                <a href="#comments" class="stat-event" aria-controls="comments" role="tab" data-stat="course_comment" data-toggle="tab">课程评论(${comments.size()})</a>
            </li>
            <%--<li role="presentation">--%>
                <%--<a href="#reports" class="stat-event" data-stat="course_report" aria-controls="reports" role="tab" data-toggle="tab">实验报告(3417)</a>--%>
            <%--</li>--%>
            <%--<li role="presentation">--%>
                <%--<a href="#questions" class="stat-event" data-stat="course_question" aria-controls="questions" role="tab" data-toggle="tab">实验问答(1108)</a>--%>
            <%--</li>--%>
        </ul>
        <div class="tab-content">

            <div role="tabpanel" class="tab-pane active" id="labs">
                <c:forEach items="${course.chapters}" var="chapter">
    <div class="lab-item ">
    <div class="lab-item-title" data-toggle="tooltip" data-placement="bottom" >${chapter.title}</div><br>
        <c:forEach items="${chapter.videos}" var="video">
            <div class="lab-item-status" data-toggle="tooltip" data-placement="bottom" >${video.title}</div>
    <div class="pull-right lab-item-ctrl">
                <!--<a class="btn btn-default" href="#sign-modal" data-toggle="modal" data-sign="signin" data-next="/courses/1">查看文档</a>-->
                <a class="btn btn-primary" href="/video/player/${video.id}">开始实验</a>
    </div><br>
        </c:forEach>
    </div>
                </c:forEach>

            </div>
            <div role="tabpanel" class="tab-pane course-comment" id="comments">
                <div class="comment-box">
                    <div class="comment-title" style="color: #0ace9d">最新评论</div>
                    <%--<div class="comment-form">--%>
                        <%----%>
                            <%--<div class="comment-form-unlogin">--%>
                                <%--请--%>
                                <%--<a href="#sign-modal" data-toggle="modal" data-sign="signin" data-next="/courses/1"> 登录 </a>--%>
                                <%--后发表评论--%>
                            <%--</div>--%>
                        <%----%>
                    <%--</div>--%>
                        <ul class="row question-items">
                            <c:forEach items="${comments}" var="comment">
                            <li class="question-item">
                                <div class="col-md-10">
                                    <div class="col-sm-2 question-item-author">
                                        <div class="user-avatar ">
                                            <a class="avatar" href="/user/13" target="_blank">
                                                <img src="/test/${comment.student.image}">
                                            </a>
                                        </div>

                                    </div>
                                    <div class="col-sm-10">
                                        <h4>

                                            <span class="question-item-title" style="color: #0ace9d">${comment.content}</span>
                                        </h4>
                                        <div class="question-item-summary">
                                            <div class="user-username ">
                                                <a class="username" href="/user/13" target="_blank">
                                                    ${comment.student.name}
                                                </a>
                                            </div>
                                            <span class="question-item-date"><fmt:formatDate  value="${comment.createTime}" pattern="yyyy年MM月dd日 HH时mm分ss秒"/></span>
 </span>
                                        </div>
                                    </div>
                                </div>
                                <%--<div class="col-md-2 question-item-rank">--%>
                                    <%--<div class="question-item-answered">--%>
                                        <%--<div>1</div>--%>
                                        <%--<div>回复</div>--%>
                                    <%--</div>--%>
                                    <%--<div class="question-item-views">--%>
                                        <%--<div>47</div>--%>
                                        <%--<div>查看</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            </li>
                            </c:forEach>
                        </ul>

                    <div class="comment-list">
                    </div>
                    <div class="pagination-container"></div>
                </div>
            </div>
                </div>
            </div>
        </div>
        <div class="col-md-3 layout-side">
    <div class="side-image side-image-pc">
        <img src="/test/${course.image}">
    </div>

<div class="sidebox mooc-teacher">
    <div class="sidebox-header mooc-header">
        <h4 class="sidebox-title">课程教师</h4>
    </div>
    <div class="sidebox-body mooc-content">
        <a href="/user/20406" target="_blank">
          <img src="/test/${course.teacher.image}">
        </a>
        <div class="mooc-info">
            <div class="name"><strong>${course.teacher.name}</strong> </div>

            <div class="courses">该课程发布于<br><br><strong><fmt:formatDate  value="${course.createTime}" pattern="yyyy年MM月dd日 HH时mm分ss秒"/></strong></div>
        </div>
        <div class="mooc-extra-info">
            <div class="word long-paragraph">
                ${course.teacher.intro}
            </div>
        </div>
    </div>
    <div class="sidebox-footer mooc-footer">
        <a href="/teacher/20406" target="_blank">查看老师的所有课程 ></a>
    </div>
</div>




    <div class="side-image">
    <%--<a href="/vip" target="_blank">--%>
        <%--<img src="../../../static/img/banner-vip.png">--%>
    <%--</a>--%>
</div>
    <div class="sidebox adv-course">
        <div class="sidebox-header">
            <h4 class="sidebox-title">进阶课程</h4>
        </div>
        <div class="sideobx-body course-content">

            <a href="/courses/204">实用Linux Shell编程</a>

            <a href="/courses/2">Vim编辑器</a>

            <a href="/courses/68">Linux命令实例练习</a>

        </div>
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
    

    

<div class="modal fade askquestion-modal" id="askquestion" tabindex="-1" role="dialog">
    <div class="modal-dialog" role=document>
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">发帖</h4>
            </div>
            <div class="modal-body words-ctrl">
                <form class="form-horizontal" action="/questions/">
                    <input name="_csrf_token" type=hidden value="1483794941##be4fb68b276c5f7cb970936cb25985cd53b943d1">
                    <div class="form-group">
                        <label class="col-md-2 control-label">标题</label>
                        <div class="col-md-10">
                            <input type="text" name="title" min="5" max="100" class="form-control" placeholder="至少输入5个字" value="">
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label">描述</label>
                        <div class="col-md-10">
                            
                            
                            
<div class="tabpanel mkeditor">
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active">
            <a href="#mkeditor-editor" role="tab" data-toggle="tab">编辑</a>
        </li>
        <li role="presentation">
            <a class="mkeditor-btn-view" href="#mkeditor-viewer" role="tab" data-toggle="tab">预览</a>
        </li>
    </ul>
    <div class="tab-content">
        <div class="tab-pane active mkeditor-editor" id="mkeditor-editor" role="tabpanel">
            
            <div class="btn-group" role="group">
            
                <button type="button" class="btn btn-default mkeditor-btn-bold">
                    <i class="fa fa-bold"></i>
                </button>
                <button type="button" class="btn btn-default mkeditor-btn-italic">
                    <i class="fa fa-italic"></i>
                </button>
                <button type="button" class="btn btn-default mkeditor-btn-link">
                    <i class="fa fa-link"></i>
                </button>
                <button type="button" class="btn btn-default mkeditor-btn-quote">
                    <i class="fa fa-quote-left"></i>
                </button>
                <button type="button" class="btn btn-default mkeditor-btn-code">
                    <i class="fa fa-code"></i>
                </button>
                <button id="mkeditor-pickfile" type="button" class="btn btn-default mkeditor-btn-img">
                    <i class="fa fa-image"></i>
                </button>
                
                <button type="button" class="btn btn-default mkeditor-btn-listol">
                    <i class="fa fa-list-ol"></i>
                </button>
                <button type="button" class="btn btn-default mkeditor-btn-listul">
                    <i class="fa fa-list-ul"></i>
                </button>
            </div>
            <div class="btn-group pull-right" role="group">
                <a style="font-size:12px; color:#666; text-decoration:underline;" href="/questions/764" target="_blank">
                    <i class="fa fa-question-circle"></i>Markdown 语法
                </a>
            </div>
            <textarea name="content" class="content"
                min="0" max="20000"
                placeholder="推荐使用 Markdown 语法，至少输入 5 个字"></textarea>
            <div class="help-block"></div>
        </div>
        <div class="tab-pane mkeditor-viewer markdown-body" id="mkeditor-viewer" role="tabpanel">
            <div></div>
        </div>
    </div>
</div>

                        </div>
                    </div>
                    <div class="form-group" >
                        <label class="col-md-2 control-label">板块</label>
                        <div class="col-md-10">
                            <div class="q-types" data-type="">
                            </div>
                        </div>
                    </div>
                    
                    
                </form>
            </div>
            <div class="modal-footer">
                <a type="button" class="submit-question btn btn-primary" href="/vip" target="_blank" style="background:#FFFFFF;color:#00CC99;border:none;float:left;padding-left:0;"><img src="../img/senior-vip-icon.png" alt=""> 加入高级会员获得助教答疑</a>
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="submit-question btn btn-primary" data-dismiss="modal">提交</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="start-newlab">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3>开始新实验</h3>
			</div>
			<div class="modal-body" style="text-align:center">
                <p> 一个实验正在进行，是否停止它，开始新实验？</p>
                
			</div>
			<div class="modal-footer" style="margin-top:0px">
                
                    <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
                    <a class="btn btn-primary start-newlab-confirm">确定</a>
                
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div>
<div class="modal fade" id="start-evaluation-course">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3>开始评估课实验</h3>
			</div>
			<div class="modal-body">
                <div>
                    <p>为了让评估结果更加准确，请注意以下操作：</p>
                    <ul>
                        <li>完成实验后点击「停止实验」按钮</li>
                        <li>将代码提交到代码库</li>
                        <li>尽可能详尽的撰写实验报告</li>
                        <li>尽可能在实验操作的关键步骤截图</li>
                        <li>尽可能减少无用操作</li>
                        <li>尽可能高效的利用内存/CPU资源</li>
                    </ul>
                    <p>评估课还在不断完善中，我们真挚希望你能通过我们提供的这个平台，找到更好的发展机会。</p>
                </div>
                <br>
                <div class="start-newlab"></div>
			</div>
			<div class="modal-footer">
                <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
                <a class="btn btn-primary start-confirm">确定</a>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div>
<div class="modal fade" id="vip-startlab-modal">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3>开始实验</h3>
			</div>
			<div class="modal-body">
                <div class="start-newlab"></div>
                <br>
                <div class="text-center vip-vm">
                    <a class="btn btn-default btn-lg newvm">创建新环境</a>
					
                </div>
                <br>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div>
<div class="modal fade" id="bean-course-modal" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title">激活项目课：Linux 基础入门（新版）</h4>
			</div>
			<div class="modal-body">
				<div style="font-size:14px;">
					要在实验楼愉快地学习，先要熟练地使用 Linux，本实验介绍 Linux 基本操作，shell 环境下的常用命令。
				</div>
				<div style="margin:36px 0 18px; font-size:16px; font-weight:bold;">
                    您有 <span style="color:#f66;"><strong></strong></span> 个实验豆，激活本课程需要消耗 <span style="color:#f66;"><strong>0</strong></span> 个实验豆！
				</div>
                <div style="color:#84B61A; font-size:14px; font-weight:bold;">激活后可不限次数学习本课。<a href="/faq#shiyandou" style="font-weight:normal;" target="_blank">如何获得实验豆？</a></div>
			</div>
			<div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				
                <a class="btn btn-primary getshiyandou" href="/faq#shiyandou" target="_blank" data-dismiss="modal">获取实验豆</a>
				
			</div>
		</div>
	</div>
</div>


<div class="modal fade" id="charge-course-modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                <h4 class="modal-title">课程报名</h4>
            </div>
            <div class="modal-body">
                <form class="row form-horizontal">
                     <input name="_csrf_token" type=hidden value="1483794941##be4fb68b276c5f7cb970936cb25985cd53b943d1">
                    <div class="form-group">
                        <label class="col-md-2 control-label">邮箱</label>
                        <div class="col-md-10">
                            <input type="email" class="form-control" name="email" value="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label">手机号码</label>
                        <div class="col-md-10">
                            <div class="input-group">
                                <input type="text" class="form-control" name="phone_no">
                                <span class="input-group-btn">
                                    <button class="btn btn-default charge-course-phone-code" type="button" style="padding:7px 12px;">获取验证码</button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label">验证码</label>
                        <div class="col-md-10">
                            <input type="text" class="form-control" name="verify_code">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary charge-course-confirm">确定</button>
            </div>
        </div>
    </div>
</div>



<div class="modal fade" id="paid-modal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" style="text-align:center;">支付确认</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <button class="btn btn-primary paid-confirm" type="button">支付成功</button>
                    </div>
                    <div class="col-md-6">
                        <button class="btn btn-primary paid-method" type="button" style="background:none; color:#0c9">选择支付方式</button>
                    </div>
                </div>
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
                                <a class="pull-right" href="../reset_password/index.html">忘记密码？</a>
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
                                注册表示您已经同意我们的<a href="../privacy/index.html" target="_blank">隐私条款</a>
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

    
<div id="jinja-data"
    data-userlab-id=""
    data-course-id="1"
    data-is-authenticated="false"
	data-user-joined="false"
    data-user-logined="false"
    data-show-student-info-modal="false"
    data-login-url="/login?next=%2Fcourses%2F1"
    data-start-newlab-url="/courses/clear"
    
    data-faq="/faq"
    data-comment-post="/courses/1/comments"
    data-loginurl="/login?next=%2Fcourses%2F1"
    data-site-type="0"
    data-report-post="/courses/1/reports"
    data-recomment-img="../img/recommentReport.png"
    data-charge-course-phone-code="/user/sms/code"
    data-join-private-course="/courses/join"
    data-current-user-id=""
    data-vip-icon="../img/vip-icon.png"
    data-vip-index="/vip"
    data-get-question-url="/courses/1/questions"
	data-real-price = ""
    
    data-query-bill="/purchase/bill/query"
    data-question-form="/questions/meta"
    data-qiniu-token-url="/api/qiniu/token"
    ></div>
<script src="../../../static/app/dest/course/labs.js?=2016121272249"></script>





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
