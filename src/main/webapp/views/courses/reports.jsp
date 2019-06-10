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
        <title> 实验报告 - 实验楼</title>
<meta content="实验楼课程分为基础课和项目课，内容涵盖了Linux、Python、Java、C语言、Ruby、Android、IOS开发、大数据、信息安全等IT技术领域。" name="description">
<meta content="实验楼课程,IT培训课程,IT实训课程,IT在线课程,all" name="keywords">

    <meta content="实验楼,琛石科技" name="author">

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
                <span class="sr-only">实验楼</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="../xx.html">
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
                        <li><a class="active" href="index.jsp" >全部课程</a></li>
                        <li><a class="" href="index.jsp?status=preview" >即将上线</a></li>
                        <li><a class="" href="../developer/index.html">开发者</a></li>
                    </ul>
                </li>
                <li class="">
                    <a href="../paths/index.html">路径</a>
                </li>
                <li class="">
                    <a href="../questions/index.html">讨论区</a>
                </li>
                <li class=" bootcamp new-nav logo-1111">
                    <a href="../bootcamp/index.html">训练营</a>
                    
                </li>
                <li class=" new-nav logo-1111">
                    <a href="../vip/index.html">会员</a>
                    
                </li>
                
            </ul>

            
            <div class="navbar-right btns">
                <a class="btn btn-default navbar-btn sign-in" data-sign="signin" href="#sign-modal" data-toggle="modal">登录</a>
                <a class="btn btn-default navbar-btn sign-up" data-sign="signup" href="#sign-modal" data-toggle="modal">注册</a>
            </div>
            

            <form class="navbar-form navbar-right" action="../search" method="get" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" name="search" autocomplete="off" placeholder="搜索 课程/问答">
                </div>
            </form>
        </div>
    </div>
</nav>

        
	


<div class="container layout layout-margin-top">
    
    <ol class="breadcrumb">
        <li><a href="/courses/">全部课程</a></li>
        <li class="active">
            <a href="/courses/reports">
            实验报告
            </a>
        </li>
    </ol>

    <div class="row">
        <div class="col-md-9 layout-body">
            
    <div class="content">
        <div class="discovery-list">
            <div class="discovery-title">
                <img class="pull-left" src="../../../static/img/share-reports.png">
                <div class="pull-left discovery-title-text">
                    <strong>实验报告</strong><span>（发现有价值的实验报告）</span>
                </div>
                <div class="pull-right discovery-catalog">
                    <a class="active" href="/courses/reports?sort=newest">最新</a>
                    <a class="" href="/courses/reports?sort=hot">最热</a>
                </div>
            </div>
            
<div class="row report-items">
    
    <div class="col-md-3 report-item clearfix">
        <a href="/courses/reports/1255370">
            <div class="report-item-course">
                
                
                Kali 渗透测试 - Web 应用攻击实战
            </div>
            <div class="report-item-lab">Web 弱密码暴力破解</div>
            <div class="tags">
            
            
            <span class="tag tag-primary">信息安全</span>
            
            
            </div>
            <div class="report-item-count">
                <span>726 字</span>
                <div class="report-item-arrow">
                    <div class="report-item-arrow-line"></div>
                </div>
            </div>
            
            <!--
            <div class="report-item-benchmark">
                <img src="../img/labreport-evaluate-B.png">
            </div>-->
            
        </a>
        <div class="col-xs-8">
            <div class="report-item-author">
                
    
    
    
    <div class="user-avatar report-item-avatar">
        <a class="avatar" href="/user/345894" target="_blank">
            <img src="https://dn-simplecloud.shiyanlou.com/gravatar345894.png?v=1483281481240&amp;imageView2/1/w/200/h/200">
        </a>
        
        <a class="member-icon" href="/vip" target="_blank">
            
<img src="
            ../img/senior-vip-icon.png
          ">

        </a>
        
    </div>

                
    
    
    
    <div class="user-username ">
        <a class="username" href="/user/345894" target="_blank">
            
                shenxinon
            

        </a>
        <span class="user-level">L5</span>
    </div>

            </div>
        </div>
        <div class="col-xs-4">
            <div class="pull-right report-item-comments">
                <i class="fa fa-comments-o"></i>
                0
            </div>
            <div class="pull-right report-item-update">
                10分钟前
            </div>
        </div>
    </div>
    
    <div class="col-md-3 report-item clearfix">
        <a href="/courses/reports/1255369">
            <div class="report-item-course">
                
                
                Vim编辑器
            </div>
            <div class="report-item-lab">查找替换</div>
            <div class="tags">
            
            
            <span class="tag tag-primary">Linux</span>
            
            
            </div>
            <div class="report-item-count">
                <span>1026 字</span>
                <div class="report-item-arrow">
                    <div class="report-item-arrow-line"></div>
                </div>
            </div>
            
        </a>
        <div class="col-xs-8">
            <div class="report-item-author">
                
    
    
    
    <div class="user-avatar report-item-avatar">
        <a class="avatar" href="/user/347155" target="_blank">
            <img src="https://dn-simplecloud.shiyanlou.com/gravatarPQMRUDNVLHTY.jpg?imageView2/1/w/200/h/200">
        </a>
        
        <a class="member-icon" href="/vip" target="_blank">
            
<img src="
            ../img/senior-vip-icon.png
          ">

        </a>
        
    </div>

                
    
    
    
    <div class="user-username ">
        <a class="username" href="/user/347155" target="_blank">
            
                区区小氏
            

        </a>
        <span class="user-level">L7</span>
    </div>

            </div>
        </div>
        <div class="col-xs-4">
            <div class="pull-right report-item-comments">
                <i class="fa fa-comments-o"></i>
                0
            </div>
            <div class="pull-right report-item-update">
                13分钟前
            </div>
        </div>
    </div>
    
    <div class="col-md-3 report-item clearfix">
        <a href="/courses/reports/1255368">
            <div class="report-item-course">
                
                
                新手指南之玩转实验楼
            </div>
            <div class="report-item-lab">Hello，ShiYanLou!</div>
            <div class="tags">
            
            
            <span class="tag tag-primary">C/C++</span>
            
            
            </div>
            <div class="report-item-count">
                <span>734 字</span>
                <div class="report-item-arrow">
                    <div class="report-item-arrow-line"></div>
                </div>
            </div>
            
            <!--
            <div class="report-item-benchmark">
                <img src="../img/labreport-evaluate-C.png">
            </div>-->
            
        </a>
        <div class="col-xs-8">
            <div class="report-item-author">
                
    
    
    
    <div class="user-avatar report-item-avatar">
        <a class="avatar" href="/user/126149" target="_blank">
            <img src="https://dn-simplecloud.shiyanlou.com/gravatarHJZL9829RMMD.jpg?imageView2/1/w/200/h/200">
        </a>
        
    </div>

                
    
    
    
    <div class="user-username ">
        <a class="username" href="/user/126149" target="_blank">
            
                02siqin
            

        </a>
        <span class="user-level">L16</span>
    </div>

            </div>
        </div>
        <div class="col-xs-4">
            <div class="pull-right report-item-comments">
                <i class="fa fa-comments-o"></i>
                0
            </div>
            <div class="pull-right report-item-update">
                20分钟前
            </div>
        </div>
    </div>
    
    <div class="col-md-3 report-item clearfix">
        <a href="/courses/reports/1255366">
            <div class="report-item-course">
                
                
                操作系统原理与实践
            </div>
            <div class="report-item-lab">操作系统的引导</div>
            <div class="tags">
            
            
            <span class="tag tag-primary">Linux</span>
            
            <span class="tag tag-primary">计算机专业课</span>
            
            
            </div>
            <div class="report-item-count">
                <span>170 字</span>
                <div class="report-item-arrow">
                    <div class="report-item-arrow-line"></div>
                </div>
            </div>
            
            <!--
            <div class="report-item-benchmark">
                <img src="../img/labreport-evaluate-B.png">
            </div>-->
            
        </a>
        <div class="col-xs-8">
            <div class="report-item-author">
                
    
    
    
    <div class="user-avatar report-item-avatar">
        <a class="avatar" href="/user/347060" target="_blank">
            <img src="https://dn-simplecloud.shiyanlou.com/gravatarM7Q8G5B92TNJ.jpg?imageView2/1/w/200/h/200">
        </a>
        
    </div>

                
    
    
    
    <div class="user-username ">
        <a class="username" href="/user/347060" target="_blank">
            
                到此一游
            

        </a>
        <span class="user-level">L5</span>
    </div>

            </div>
        </div>
        <div class="col-xs-4">
            <div class="pull-right report-item-comments">
                <i class="fa fa-comments-o"></i>
                0
            </div>
            <div class="pull-right report-item-update">
                22分钟前
            </div>
        </div>
    </div>
    
    <div class="col-md-3 report-item clearfix">
        <a href="/courses/reports/1255365">
            <div class="report-item-course">
                
                
                Linux 基础入门（新版）
            </div>
            <div class="report-item-lab">Linux 系统简介</div>
            <div class="tags">
            
            
            <span class="tag tag-primary">Linux</span>
            
            
            </div>
            <div class="report-item-count">
                <span>734 字</span>
                <div class="report-item-arrow">
                    <div class="report-item-arrow-line"></div>
                </div>
            </div>
            
            <!--
            <div class="report-item-benchmark">
                <img src="../img/labreport-evaluate-C.png">
            </div>-->
            
        </a>
        <div class="col-xs-8">
            <div class="report-item-author">
                
    
    
    
    <div class="user-avatar report-item-avatar">
        <a class="avatar" href="/user/350078" target="_blank">
            <img src="https://dn-simplecloud.shiyanlou.com/gravatarC7F93WLZA2RV.jpg?imageView2/1/w/200/h/200">
        </a>
        
    </div>

                
    
    
    
    <div class="user-username ">
        <a class="username" href="/user/350078" target="_blank">
            
                LOU3409932591
            

        </a>
        <span class="user-level">L4</span>
    </div>

            </div>
        </div>
        <div class="col-xs-4">
            <div class="pull-right report-item-comments">
                <i class="fa fa-comments-o"></i>
                0
            </div>
            <div class="pull-right report-item-update">
                57分钟前
            </div>
        </div>
    </div>
    
    <div class="col-md-3 report-item clearfix">
        <a href="/courses/reports/1255364">
            <div class="report-item-course">
                
                
                新手指南之玩转实验楼
            </div>
            <div class="report-item-lab">Hello，ShiYanLou!</div>
            <div class="tags">
            
            
            <span class="tag tag-primary">C/C++</span>
            
            
            </div>
            <div class="report-item-count">
                <span>168 字</span>
                <div class="report-item-arrow">
                    <div class="report-item-arrow-line"></div>
                </div>
            </div>
            
            <!--
            <div class="report-item-benchmark">
                <img src="../img/labreport-evaluate-C.png">
            </div>-->
            
        </a>
        <div class="col-xs-8">
            <div class="report-item-author">
                
    
    
    
    <div class="user-avatar report-item-avatar">
        <a class="avatar" href="/user/350347" target="_blank">
            <img src="https://dn-simplecloud.shiyanlou.com/gravatarGE6925ATFWVB.jpg?imageView2/1/w/200/h/200">
        </a>
        
    </div>

                
    
    
    
    <div class="user-username ">
        <a class="username" href="/user/350347" target="_blank">
            
                LOU4116603964
            

        </a>
        <span class="user-level">L1</span>
    </div>

            </div>
        </div>
        <div class="col-xs-4">
            <div class="pull-right report-item-comments">
                <i class="fa fa-comments-o"></i>
                0
            </div>
            <div class="pull-right report-item-update">
                1小时前
            </div>
        </div>
    </div>
    
    <div class="col-md-3 report-item clearfix">
        <a href="/courses/reports/1255362">
            <div class="report-item-course">
                
                
                Python 图片转字符画
            </div>
            <div class="report-item-lab">Python 图片转字符画</div>
            <div class="tags">
            
            
            <span class="tag tag-primary">Python</span>
            
            
            </div>
            <div class="report-item-count">
                <span>203 字</span>
                <div class="report-item-arrow">
                    <div class="report-item-arrow-line"></div>
                </div>
            </div>
            
            <!--
            <div class="report-item-benchmark">
                <img src="../img/labreport-evaluate-A.png">
            </div>-->
            
        </a>
        <div class="col-xs-8">
            <div class="report-item-author">
                
    
    
    
    <div class="user-avatar report-item-avatar">
        <a class="avatar" href="/user/341855" target="_blank">
            <img src="https://dn-simplecloud.shiyanlou.com/gravatar341855.png?v=1482645161078&amp;imageView2/1/w/200/h/200">
        </a>
        
    </div>

                
    
    
    
    <div class="user-username ">
        <a class="username" href="/user/341855" target="_blank">
            
                Sinclair_Dee
            

        </a>
        <span class="user-level">L9</span>
    </div>

            </div>
        </div>
        <div class="col-xs-4">
            <div class="pull-right report-item-comments">
                <i class="fa fa-comments-o"></i>
                0
            </div>
            <div class="pull-right report-item-update">
                1小时前
            </div>
        </div>
    </div>
    
    <div class="col-md-3 report-item clearfix">
        <a href="/courses/reports/1255360">
            <div class="report-item-course">
                
                
                Git 实战教程
            </div>
            <div class="report-item-lab">git介绍</div>
            <div class="tags">
            
            
            <span class="tag tag-primary">Git</span>
            
            
            </div>
            <div class="report-item-count">
                <span>107 字</span>
                <div class="report-item-arrow">
                    <div class="report-item-arrow-line"></div>
                </div>
            </div>
            
            <!--
            <div class="report-item-benchmark">
                <img src="../img/labreport-evaluate-C.png">
            </div>-->
            
        </a>
        <div class="col-xs-8">
            <div class="report-item-author">
                
    
    
    
    <div class="user-avatar report-item-avatar">
        <a class="avatar" href="/user/350078" target="_blank">
            <img src="https://dn-simplecloud.shiyanlou.com/gravatarC7F93WLZA2RV.jpg?imageView2/1/w/200/h/200">
        </a>
        
    </div>

                
    
    
    
    <div class="user-username ">
        <a class="username" href="/user/350078" target="_blank">
            
                LOU3409932591
            

        </a>
        <span class="user-level">L4</span>
    </div>

            </div>
        </div>
        <div class="col-xs-4">
            <div class="pull-right report-item-comments">
                <i class="fa fa-comments-o"></i>
                0
            </div>
            <div class="pull-right report-item-update">
                2小时前
            </div>
        </div>
    </div>
    
    <div class="col-md-3 report-item clearfix">
        <a href="/courses/reports/1253515">
            <div class="report-item-course">
                
                
                Kali 渗透测试 - 服务器攻击实战（20个实验）
            </div>
            <div class="report-item-lab">开发新的 Metasploit 扫描器</div>
            <div class="tags">
            
            
            <span class="tag tag-primary">信息安全</span>
            
            
            </div>
            <div class="report-item-count">
                <span>680 字</span>
                <div class="report-item-arrow">
                    <div class="report-item-arrow-line"></div>
                </div>
            </div>
            
            <!--
            <div class="report-item-benchmark">
                <img src="../img/labreport-evaluate-A.png">
            </div>-->
            
        </a>
        <div class="col-xs-8">
            <div class="report-item-author">
                
    
    
    
    <div class="user-avatar report-item-avatar">
        <a class="avatar" href="/user/67559" target="_blank">
            <img src="https://dn-simplecloud.shiyanlou.com/gravatarS7C2HLP6Y5UZ.jpg?imageView2/1/w/200/h/200">
        </a>
        
        <a class="member-icon" href="/vip" target="_blank">
            
<img src="../../../static/img/vip-icon.png
          ">

        </a>
        
    </div>

                
    
    
    
    <div class="user-username ">
        <a class="username" href="/user/67559" target="_blank">
            
                e海孤帆
            

        </a>
        <span class="user-level">L383</span>
    </div>

            </div>
        </div>
        <div class="col-xs-4">
            <div class="pull-right report-item-comments">
                <i class="fa fa-comments-o"></i>
                0
            </div>
            <div class="pull-right report-item-update">
                2小时前
            </div>
        </div>
    </div>
    
    <div class="col-md-3 report-item clearfix">
        <a href="/courses/reports/1255356">
            <div class="report-item-course">
                
                
                Python Django Web框架
            </div>
            <div class="report-item-lab">模型（二）</div>
            <div class="tags">
            
            
            <span class="tag tag-primary">Python</span>
            
            
            </div>
            <div class="report-item-count">
                <span>773 字</span>
                <div class="report-item-arrow">
                    <div class="report-item-arrow-line"></div>
                </div>
            </div>
            
            <!--
            <div class="report-item-benchmark">
                <img src="../img/labreport-evaluate-A.png">
            </div>-->
            
        </a>
        <div class="col-xs-8">
            <div class="report-item-author">
                
    
    
    
    <div class="user-avatar report-item-avatar">
        <a class="avatar" href="/user/257913" target="_blank">
            <img src="https://dn-simplecloud.shiyanlou.com/gravatarNTY0MzE5MjcwNTg4.png?v=1472709990977&amp;imageView2/1/w/200/h/200">
        </a>
        
        <a class="member-icon" href="/vip" target="_blank">
            
<img src="../../../static/img/vip-icon.png
          ">

        </a>
        
    </div>

                
    
    
    
    <div class="user-username ">
        <a class="username" href="/user/257913" target="_blank">
            
                Unchained_Coder
            

        </a>
        <span class="user-level">L55</span>
    </div>

            </div>
        </div>
        <div class="col-xs-4">
            <div class="pull-right report-item-comments">
                <i class="fa fa-comments-o"></i>
                0
            </div>
            <div class="pull-right report-item-update">
                2小时前
            </div>
        </div>
    </div>
    
    <div class="col-md-3 report-item clearfix">
        <a href="/courses/reports/1255358">
            <div class="report-item-course">
                
                
                新手指南之玩转实验楼
            </div>
            <div class="report-item-lab">Hello，ShiYanLou!</div>
            <div class="tags">
            
            
            <span class="tag tag-primary">C/C++</span>
            
            
            </div>
            <div class="report-item-count">
                <span>110 字</span>
                <div class="report-item-arrow">
                    <div class="report-item-arrow-line"></div>
                </div>
            </div>
            
            <!--
            <div class="report-item-benchmark">
                <img src="../img/labreport-evaluate-B.png">
            </div>-->
            
        </a>
        <div class="col-xs-8">
            <div class="report-item-author">
                
    
    
    
    <div class="user-avatar report-item-avatar">
        <a class="avatar" href="/user/323599" target="_blank">
            <img src="https://dn-simplecloud.shiyanlou.com/gravatarT693USDFP7QR.jpg?imageView2/1/w/200/h/200">
        </a>
        
    </div>

                
    
    
    
    <div class="user-username ">
        <a class="username" href="/user/323599" target="_blank">
            
                送你一轮明月
            

        </a>
        <span class="user-level">L2</span>
    </div>

            </div>
        </div>
        <div class="col-xs-4">
            <div class="pull-right report-item-comments">
                <i class="fa fa-comments-o"></i>
                0
            </div>
            <div class="pull-right report-item-update">
                2小时前
            </div>
        </div>
    </div>
    
    <div class="col-md-3 report-item clearfix">
        <a href="/courses/reports/1254968">
            <div class="report-item-course">
                
                
                Linux 基础入门（新版）
            </div>
            <div class="report-item-lab">用户及文件权限管理</div>
            <div class="tags">
            
            
            <span class="tag tag-primary">Linux</span>
            
            
            </div>
            <div class="report-item-count">
                <span>980 字</span>
                <div class="report-item-arrow">
                    <div class="report-item-arrow-line"></div>
                </div>
            </div>
            
            <!--
            <div class="report-item-benchmark">
                <img src="../img/labreport-evaluate-A.png">
            </div>-->
            
        </a>
        <div class="col-xs-8">
            <div class="report-item-author">
                
    
    
    
    <div class="user-avatar report-item-avatar">
        <a class="avatar" href="/user/270618" target="_blank">
            <img src="https://dn-simplecloud.shiyanlou.com/gravatarBXMT94VGKPS2.jpg?imageView2/1/w/200/h/200">
        </a>
        
    </div>

                
    
    
    
    <div class="user-username ">
        <a class="username" href="/user/270618" target="_blank">
            
                why8023
            

        </a>
        <span class="user-level">L5</span>
    </div>

            </div>
        </div>
        <div class="col-xs-4">
            <div class="pull-right report-item-comments">
                <i class="fa fa-comments-o"></i>
                0
            </div>
            <div class="pull-right report-item-update">
                2小时前
            </div>
        </div>
    </div>
    
    <div class="col-md-3 report-item clearfix">
        <a href="/courses/reports/1255359">
            <div class="report-item-course">
                
                
                C语言入门教程
            </div>
            <div class="report-item-lab">循环程序设计</div>
            <div class="tags">
            
            
            <span class="tag tag-primary">C/C++</span>
            
            <span class="tag tag-primary">计算机专业课</span>
            
            
            </div>
            <div class="report-item-count">
                <span>287 字</span>
                <div class="report-item-arrow">
                    <div class="report-item-arrow-line"></div>
                </div>
            </div>
            
            <!--
            <div class="report-item-benchmark">
                <img src="../img/labreport-evaluate-A.png">
            </div>-->
            
        </a>
        <div class="col-xs-8">
            <div class="report-item-author">
                
    
    
    
    <div class="user-avatar report-item-avatar">
        <a class="avatar" href="/user/348062" target="_blank">
            <img src="https://dn-simplecloud.shiyanlou.com/gravatar348062.png?v=1483703222865&amp;imageView2/1/w/200/h/200">
        </a>
        
    </div>

                
    
    
    
    <div class="user-username ">
        <a class="username" href="/user/348062" target="_blank">
            
                生无可恋的咸鱼
            

        </a>
        <span class="user-level">L8</span>
    </div>

            </div>
        </div>
        <div class="col-xs-4">
            <div class="pull-right report-item-comments">
                <i class="fa fa-comments-o"></i>
                0
            </div>
            <div class="pull-right report-item-update">
                2小时前
            </div>
        </div>
    </div>
    
    <div class="col-md-3 report-item clearfix">
        <a href="/courses/reports/1255355">
            <div class="report-item-course">
                
                
                新手指南之玩转实验楼
            </div>
            <div class="report-item-lab">Hello World！</div>
            <div class="tags">
            
            
            <span class="tag tag-primary">C/C++</span>
            
            
            </div>
            <div class="report-item-count">
                <span>186 字</span>
                <div class="report-item-arrow">
                    <div class="report-item-arrow-line"></div>
                </div>
            </div>
            
            <!--
            <div class="report-item-benchmark">
                <img src="../img/labreport-evaluate-C.png">
            </div>-->
            
        </a>
        <div class="col-xs-8">
            <div class="report-item-author">
                
    
    
    
    <div class="user-avatar report-item-avatar">
        <a class="avatar" href="/user/350045" target="_blank">
            <img src="https://dn-simplecloud.shiyanlou.com/gravatar42NHCRB6KXD9.jpg?imageView2/1/w/200/h/200">
        </a>
        
    </div>

                
    
    
    
    <div class="user-username ">
        <a class="username" href="/user/350045" target="_blank">
            
                寒渊萧雪
            

        </a>
        <span class="user-level">L2</span>
    </div>

            </div>
        </div>
        <div class="col-xs-4">
            <div class="pull-right report-item-comments">
                <i class="fa fa-comments-o"></i>
                0
            </div>
            <div class="pull-right report-item-update">
                3小时前
            </div>
        </div>
    </div>
    
    <div class="col-md-3 report-item clearfix">
        <a href="/courses/reports/1255353">
            <div class="report-item-course">
                
                
                Linux 基础入门（新版）
            </div>
            <div class="report-item-lab">用户及文件权限管理</div>
            <div class="tags">
            
            
            <span class="tag tag-primary">Linux</span>
            
            
            </div>
            <div class="report-item-count">
                <span>141 字</span>
                <div class="report-item-arrow">
                    <div class="report-item-arrow-line"></div>
                </div>
            </div>
            
            <!--
            <div class="report-item-benchmark">
                <img src="../img/labreport-evaluate-A.png">
            </div>-->
            
        </a>
        <div class="col-xs-8">
            <div class="report-item-author">
                
    
    
    
    <div class="user-avatar report-item-avatar">
        <a class="avatar" href="/user/348454" target="_blank">
            <img src="https://dn-simplecloud.shiyanlou.com/gravatar348454.png?v=1483586230033&amp;imageView2/1/w/200/h/200">
        </a>
        
    </div>

                
    
    
    
    <div class="user-username ">
        <a class="username" href="/user/348454" target="_blank">
            
                爱吃糖的小黑喵
            

        </a>
        <span class="user-level">L4</span>
    </div>

            </div>
        </div>
        <div class="col-xs-4">
            <div class="pull-right report-item-comments">
                <i class="fa fa-comments-o"></i>
                1
            </div>
            <div class="pull-right report-item-update">
                3小时前
            </div>
        </div>
    </div>
    
    <div class="col-md-3 report-item clearfix">
        <a href="/courses/reports/1255351">
            <div class="report-item-course">
                
                
                新手指南之玩转实验楼
            </div>
            <div class="report-item-lab">Hello，ShiYanLou!</div>
            <div class="tags">
            
            
            <span class="tag tag-primary">C/C++</span>
            
            
            </div>
            <div class="report-item-count">
                <span>205 字</span>
                <div class="report-item-arrow">
                    <div class="report-item-arrow-line"></div>
                </div>
            </div>
            
            <!--
            <div class="report-item-benchmark">
                <img src="../img/labreport-evaluate-C.png">
            </div>-->
            
        </a>
        <div class="col-xs-8">
            <div class="report-item-author">
                
    
    
    
    <div class="user-avatar report-item-avatar">
        <a class="avatar" href="/user/350045" target="_blank">
            <img src="https://dn-simplecloud.shiyanlou.com/gravatar42NHCRB6KXD9.jpg?imageView2/1/w/200/h/200">
        </a>
        
    </div>

                
    
    
    
    <div class="user-username ">
        <a class="username" href="/user/350045" target="_blank">
            
                寒渊萧雪
            

        </a>
        <span class="user-level">L2</span>
    </div>

            </div>
        </div>
        <div class="col-xs-4">
            <div class="pull-right report-item-comments">
                <i class="fa fa-comments-o"></i>
                0
            </div>
            <div class="pull-right report-item-update">
                3小时前
            </div>
        </div>
    </div>
    
</div>

            

<nav class="pagination-container">
    <ul class="pagination">
        
        <li class="disabled">
            <a href="#" aria-label="Previous">
                <span aria-hidden="true">上一页</span>
            </a>
        </li>
        
        
        
        <li class="active">
            <a href="/courses/reports?sort=newest&amp;tag=all&amp;page=1">1</a>
        </li>
        
        
        
        <li class="">
            <a href="/courses/reports?sort=newest&amp;tag=all&amp;page=2">2</a>
        </li>
        
        
        
        <li class="">
            <a href="/courses/reports?sort=newest&amp;tag=all&amp;page=3">3</a>
        </li>
        
        
        
        <li class="">
            <a href="/courses/reports?sort=newest&amp;tag=all&amp;page=4">4</a>
        </li>
        
        
        
        <li class="">
            <a href="/courses/reports?sort=newest&amp;tag=all&amp;page=5">5</a>
        </li>
        
        
        
        <li>
            <a href='#'>...</a>
        </li>
        
        
        
        <li class="">
            <a href="/courses/reports?sort=newest&amp;tag=all&amp;page=1276">1276</a>
        </li>
        
        
        
        <li class="">
            <a href="/courses/reports?sort=newest&amp;tag=all&amp;page=1277">1277</a>
        </li>
        
        
        
        <li class="">
            <a aria-label="Next" href="/courses/reports?sort=newest&amp;tag=all&amp;page=2">
                <span aria-hidden="true">下一页</span>
            </a>
        </li>
        
    </ul>
</nav>


        </div>
    </div>

        </div>
        <div class="col-md-3 layout-side">
            
    
<form class="side-search-input" method="get">
    <div class="input-group">
        <input class="form-control" type="text" name="search" placeholder="搜索...">
        <span class="input-group-btn">
            <button class="btn btn-default" type="submit">
                <i class="fa fa-search"></i>
            </button>
        </span>
    </div>
</form>

    
    <div class="sidebox">
        <div class="sidebox-header">
            <h4 class="sidebox-title">标签</h4>
        </div>
        <div class="sidebox-body">
			<div class="tags">
            <a class="tag tag-success  active " href="/courses/reports?sort=newest&amp;tag=all">全部</a></li>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=Python">Python</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=C%2FC%2B%2B">C/C++</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=Linux">Linux</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=Web">Web</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=%E4%BF%A1%E6%81%AF%E5%AE%89%E5%85%A8">信息安全</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=PHP">PHP</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=Java">Java</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=NodeJS">NodeJS</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=Android">Android</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=GO">GO</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=Spark">Spark</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=%E8%AE%A1%E7%AE%97%E6%9C%BA%E4%B8%93%E4%B8%9A%E8%AF%BE">计算机专业课</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=Hadoop">Hadoop</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=HTML5">HTML5</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=Scala">Scala</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=Ruby">Ruby</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=R">R</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=%E7%BD%91%E7%BB%9C">网络</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=Git">Git</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=SQL">SQL</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=NoSQL">NoSQL</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=%E7%AE%97%E6%B3%95">算法</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=Docker">Docker</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=Swift">Swift</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=%E6%B1%87%E7%BC%96">汇编</a>
            
            <a class="tag tag-success " href="/courses/reports?sort=newest&amp;tag=Windows">Windows</a>
            
			</div>
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
                                <img class="verify-code" src="" source="/captcha.gif">
                            </div>
                            <div class="form-group remember-login">
                                <input name="remember" type="checkbox" value="y"> 下次自动登录
                                <a class="pull-right" href="/reset_password">忘记密码？</a>
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
                                <img class="verify-code" src="" source="/captcha.gif">
                            </div>
                            <div class="form-group">
                                <input class="btn btn-primary" name="submit" type="submit" value="注册">
                            </div>
                            <div class="form-group agree-privacy">
                                注册表示您已经同意我们的<a href="/privacy" target="_blank">隐私条款</a>
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

    
<script src="../../../static/app/dest/base/index.js?=2016121272249"></script>
	
        
            
            
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
                <a href="../aboutus/index.html" target="_blank">关于我们</a><br>
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
