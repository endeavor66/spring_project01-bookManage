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
            <h4>修改图书信息</h4>
            </thead>
            <tbody>
            <tr>
                <td>图书名：</td>
                <td>
                    <input class="bookBorrowInfoBarCode" type="text" placeholder="图书名">
                </td>
            </tr>
            <tr>
                <td>图书作者：</td>
                <td>
                    <input class="bookBorrowInfoTel" type="text" placeholder="图书作者">
                </td>
            </tr>
            <tr>
                <td>图书类型：</td>
                <td>
                    <input class="bookBorrowInfoBarCode" type="text"  placeholder="图书类型">
                </td>
            </tr>
            <tr>
                <td>图书价格：</td>
                <td>
                    <input class="bookBorrowInfoBarCode" type="text" placeholder="图书价格">

                </td>
            </tr>
            <tr>
                <td>图书页数：</td>
                <td>
                    <input class="bookBorrowInfoBarCode" type="text" placeholder="图书页数">
                </td>
            </tr>
            <td>图书库存：</td>
            <td>
                <input class="bookBorrowInfoBarCode" type="text" placeholder="图书库存">

            </td>
            </tr>
            <tr>
                <td>图书详情：</td>
                <td>
                    <textarea placeholder="图书详情">

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
