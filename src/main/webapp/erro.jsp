<%--
  Created by IntelliJ IDEA.
  User: 18236
  Date: 2020/8/14
  Time: 21:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        p{
            position: absolute;
            top:200px;
            left:500px;
            font-size: 20px;
            text-align: center;

        }
    </style>
</head>
<body>
<p>登陆失败,账户或密码输入错误!<a href="${pageContext.request.contextPath}/login.jsp">点此返回</a></p>
</body>
</html>
