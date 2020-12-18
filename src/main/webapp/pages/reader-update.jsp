<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>冲鸭图书管理系统</title>
    <meta name="description" content="冲鸭图书管理系统">
    <meta name="keywords" content="冲鸭图书管理系统">

    <meta
            content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
            name="viewport">
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/readerList.css">

</head>

<body class="main-body">

<div class="system-div">
    <jsp:include page="common-head.jsp"  flush="true"></jsp:include>
    <!--    中间部分-->
    <!--    中间部分的左边-->
    <div class="middle">
        <jsp:include page="common-middle-left.jsp"  flush="true"></jsp:include>

        <!--    中间部分的右边-->
        <div class="right">
            <jsp:include page="readerUpdate-in.jsp"  flush="true"></jsp:include>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/js/common.js"></script>
</body>

</html>