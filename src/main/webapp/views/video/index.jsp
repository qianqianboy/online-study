<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<c:set var="contextPath" value="${pageContext.request.contextPath}" />--%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>在线学习平台 | 视频播放</title>
	<link rel="stylesheet" type="text/css" href="/views/video/css/normalize.css" /><!--CSS RESET-->
	<link rel="stylesheet" type="text/css" href="/views/video/css/htmleaf-demo.css"><!--演示页面样式，使用时可以不引用-->
	<link rel="stylesheet" href="/views/video/dist/css/ckin.css">
	<link rel="stylesheet" href="/views/video/css/demo.css">
	<link rel="shortcut icon" href="../favicon.ico">
</head>
<body>


<div class="htmleaf-container">
	<section class="demo-section demo-section--light" id="demo1">
		<div class="container">
			<h1 class="title heading">${video.course.title}</h1>
			<span class="title bgcolor-8">${video.chapter.title} / ${video.title}</span>
			<video poster="/static/img/005.jpg" src="/test/${video.videoSource}" data-ckin="default" data-overlay="1" data-title="${video.title}"></video>
			
			<p class="tr"><a href="/video/download/${video.videoSource}" id="a" onclick="aa">下载该小节视频</a>    播放次数：${video.playCount}     视频作者:
				<a href="" target="_blank">${video.course.teacher.name}</a>
			</p>
		</div>
	</section>
	<section class="demo-section demo-section--light" id="skins">
		<div class="container">

		</div>
	</section>
</div>

<script src="/views/video/dist/js/ckin.js"></script>
<script type="text/javascript">
	function aa() {
		alert("开始下载！")
	}
</script>
</body>
</html>