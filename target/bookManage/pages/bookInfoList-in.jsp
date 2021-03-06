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
    <span>首页/图书管理/</span>
    <span>图书信息</span>
</div>
<!--search部分-->
<div class="bookBorrow-search">
    <form action="/user/findAll.do"  method="post">
        <h4>数据查询</h4>
        <div class="bookBorrow-find">
            <input name="bookName" type="text" placeholder="图书名称" class="bookBorrow-telNum">
            <input type="submit" value="搜索" class="bookBorrow-search-btn">
        </div>
    </form>
</div>
<!--管理部分-->
<div class="bookBorrow-manage">
    <div class="bookBorrow-add">
        <button  class="bookBorrow-add-btn" onclick="window.location.href='/user/addBookList.do' " >添加</button>
    </div>
    <div class="bookBorrow-bookInfo">
        <table id="dataList" class="dataList"  width="800px" border="1" cellspacing="0" cellpadding="0">
            <thead>
            <tr>
                <th class="">编号</th>
                <th class="">图书名称</th>
                <th class="">条形码</th>
                <th class="">图书价格</th>
                <th class="">图书库存</th>
                <th class="">操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.username}</td>
                    <td>${user.password}</td>
                    <td></td>
                    <td></td>
                    <td><button  class="bookBorrow-add-btn" onclick="window.location.href='/user/updateBookList.do' " >编辑</button>
                        <button  class="bookBorrow-add-btn" onclick="window.location.href='#' " >删除</button></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
