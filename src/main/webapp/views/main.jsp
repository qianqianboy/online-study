<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/13
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>在线学习系统 | 首页</title>
</head>
<body>
    <h2>欢迎进入首页</h2>
    主人的名字是：${student.name}<br/>
          邮箱是：${student.email}<br/>
          密码是：${student.password}<br/>
          性别是：${student.sex}<br/>
    账号创建时间：${student.createTime}

</body>
</html>
