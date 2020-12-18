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
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <script>
        function checkCode() {
            var code = $("#code").val();
            var reg_code = /^\w{16}$/
            var flag = reg_code.test(code);
            if(flag){
                $("#code").css("border","");
            }else{
                alert("条形码格式有误");
                $("#code").css("border","red solid 1px");
            }
            return flag;
        }

        function checkPhone() {
            var phone = $("#phone").val();
            var reg_phone = /^\d{11}$/
            var flag = reg_phone.test(phone);
            if(flag){
                $("#phone").css("border","");
            }else{
                alert("电话格式有误");
                $("#phone").css("border","red solid 1px");
            }
            return flag;
        }

        $(function () {
            $("#addRecordBtn").click(function () {
                if(checkCode() && checkPhone()){
                    var code = $("#code").val();
                    var phone = $("#phone").val();
                    var duration = $("#duration").val();
                    $.post("/borrow/addRecord.do", {code:code, phone:phone, duration:duration}, function (info) {
                        if(info.flag == 1){
                            alert("添加成功");
                            console.log("success");
                            location.href="${pageContext.request.contextPath}/borrow/findAll.do?state=1&type=1";
                        }else{
                            alert(info.errorMsg);
                            console.log("failure");

                        }
                    });
                }
            });

            $("#code").blur(checkCode);
        });

            // $.ajax({
            //     type:"post",
            //     url:"/borrow/updateRecord.do",
            //     data:{
            //         phone:phone,
            //         code:code,
            //         duration: duration
            //     },
            //     success:function (info) {
            //         alert(info);
            //         //重新加载页面
            //         location.reload();
            //     },
            //     error:function () {
            //         alert("添加失败");
            //     }
            // });

    </script>
</head>
<body>
<div class="book-borrow-info">
    <form id="addRecordForm" class="bookBorrowInfoForm">
        <table class="bookBorrowInfoTable">
            <thead>
            <h4>添加图书借阅记录</h4>
            </thead>
            <tbody>
            <tr>
                <td>图书标识：</td>
                <td>
                    <input id="code" name="code" class="bookBorrowInfoBarCode" type="text" placeholder="输入图书的条形码">
                </td>
            </tr>
            <tr>
                <td>读者手机：</td>
                <td>
                    <input id="phone" name="phone" class="bookBorrowInfoTel" type="text" placeholder="读者手机">
                </td>
            </tr>
            <tr>
                <td>租借时长：</td>
                <td>
                    <input id="duration" name="duration" class="bookBorrowInfoTime" type="text" placeholder="租借时长，单位为1天">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input id="addRecordBtn" class="bookBorrowInfoSubmit" type="button" value="提交">
                    <input class="bookBorrowInfoReset" type="reset" value="重置" >
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>
</body>
</html>
