<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/26
  Time: 1:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/video/upload" method="post" id="uploadForm" enctype="multipart/form-data">
    　　<input type="file" name="videoName"/>
    　　<input type="submit" name="submit" id="submit" value="上传视频" />
</form>
</body>
</html>
