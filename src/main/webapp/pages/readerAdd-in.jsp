<%--
  Created by IntelliJ IDEA.
  User: 18236
  Date: 2020/8/14
  Time: 7:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="book-borrow-info">
    <form action="" class="bookBorrowInfoForm">
        <table class="bookBorrowInfoTable">
            <thead>
            <h4>添加用户信息</h4>
            </thead>
            <tbody>
            <tr>
                <td>用户名：</td>
                <td>
                    <input class="bookBorrowInfoBarCode" type="text" placeholder="用户名">
                </td>
            </tr>
            <tr>
                <td>用户年龄：</td>
                <td>
                    <input class="bookBorrowInfoTel" type="text" placeholder="年龄">
                </td>
            </tr>
            <tr>
                <td>用户性别：</td>
                <td>
                    <input class="bookBorrowInfoTime" type="radio" value="男">男
                    <input class="bookBorrowInfoTime" type="radio" value="女">女
                </td>
            </tr>
            <tr>
                <td>用户类型：</td>
                <td>
                    <input class="bookBorrowInfoTime" type="radio" value="图书管理员">图书管理员
                    <input class="bookBorrowInfoTime" type="radio" value="借阅记录员">借阅记录员
                </td>
            </tr>
            <tr>
                <td>备注说明：</td>
                <td>
                    <textarea placeholder="备注说明">

                    </textarea>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input  class="bookBorrowInfoSubmit" type="submit" value="提交" >
                    <input class="bookBorrowInfoReset" type="reset" value="重置" >
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>
</body>
</html>
