<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>你好啊！</title>
</head>
<body>
主人的名字是：${sessionScope.STUDENT.name}
${sessionScope.STUDENT.email}
${sessionScope.STUDENT.sex}
${sessionScope.STUDENT.createTime}

<%--课程是：${course.title}<br>--%>
<%--${course.id}--%>
<%--${course.teacher.name}--%>
<%--编号：${course.teacher.number}<br>--%>
<%--章节信息：--%>
<%--<c:forEach items="${course.chapters}" var="chapter">--%>
    <%--${chapter.title}<br>--%>
    <%--<c:forEach items="${chapter.videos}" var="video">--%>
        <%--${video.title}<br>--%>
    <%--</c:forEach>--%>
    <%--${chapter.createTime}--%>
<%--</c:forEach>--%>

<%--${subject.title}<br>--%>
<%--<c:forEach items="${subject.courses}" var="c">--%>
    <%--${c.id}、${c.title}、${c.teacher.name}<br>--%>
<%--</c:forEach>--%>
</body>
</html>
