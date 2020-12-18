<%--
  Created by IntelliJ IDEA.
  User: 18236
  Date: 2020/8/13
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/bookBorrow.css">
</head>
<body class="bookBorrow-body">
<!--头部-->
<div class="bookBorrow-header">
    <span>首页/借阅管理/</span>
    <span>借阅图书</span>
</div>
<!--search部分-->
<div class="bookBorrow-search">
    <form action="/borrow/findAll.do?state=0&type=2"  method="post">
        <h4>数据查询</h4>
        <div class="bookBorrow-find">
            <input name="phone" type="text" placeholder="手机号" class="bookBorrow-telNum">
            <input name="code" type="text" placeholder="条形码" class="bookBorrow-barCode">
            <input type="submit" value="搜索" class="bookBorrow-search-btn">
        </div>
    </form>
</div>
<!--管理部分-->
<div class="bookBorrow-manage">
    <div class="bookBorrow-bookInfo">
        <table id="dataList" class="dataList"  width="800px" border="1" cellspacing="0" cellpadding="0">
            <thead>
            <tr>
                <th class="">序号</th>
                <th class="">读者名</th>
                <th class="">读者电话</th>
                <th class="">书名</th>
                <th class="">条形码</th>
                <th class="">借阅时长</th>
                <th class="">借阅时间</th>
                <th class="">归还时间</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${pageInfo.list}" var="record" varStatus="s">
                <tr>
                    <td>${s.count}</td>
                    <td>${record.rname}</td>
                    <td>${record.phone}</td>
                    <td>${record.bname}</td>
                    <td>${record.code}</td>
                    <td>${record.duration}</td>
                    <td>${record.borrowTime}</td>
                    <td>${record.returnTime}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div class="fenye">
        <a href="/borrow/findAll.do?state=0&currentPage=1&pageSize=${pageInfo.pageSize}" class="prev">&lt;&lt;首页</a>
        <a href="/borrow/findAll.do?state=0&currentPage=${pageInfo.currentPage-1}&pageSize=${pageInfo.pageSize}" class="prev">&lt;&lt;上一页</a>
        <c:forEach begin="1" end="${pageInfo.totalPage}" var="pageNum">
            <a href="/borrow/findAll.do?state=0&currentPage=${pageNum}&pageSize=${pageInfo.pageSize}" >${pageNum}</a>
        </c:forEach>
        <a href="/borrow/findAll.do?state=0&currentPage=${pageInfo.currentPage+1}&pageSize=${pageInfo.pageSize}" class="prev">&gt;&gt;下一页</a>
        <a href="/borrow/findAll.do?state=0&currentPage=${pageInfo.totalPage}&pageSize=${pageInfo.pageSize}" class="prev">&gt;&gt;尾页</a>
    </div>
</div>
</body>
</html>
