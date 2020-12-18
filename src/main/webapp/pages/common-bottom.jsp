<%--
  Created by IntelliJ IDEA.
  User: 18236
  Date: 2020/8/15
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script>
    //通过button按钮的id获取点击事件
    document.getElementById("borrowManage").onclick = function () {
        //使用if判断，判断button按钮的value属性
        if (this.value === "显示") {
            // 如果是隐藏，那么点击后通过div盒子的id修改css样式，将display属性值改为none
            document.getElementById("borrowBook").style.display = "none";
            document.getElementById("borrowInfo").style.display = "none";
            //this关键字获取的是当前对象  通过this关键字来修改button的value值
            this.value = "隐藏";
        } else if (this.value === "隐藏") {
            // 如果是显示，那么点击后通过div盒子的id修改css样式，将display属性值改为block
            document.getElementById("borrowBook").style.display = "block";
            document.getElementById("borrowInfo").style.display ="block"
            //this关键字获取的是当前对象  通过this关键字来修改button的value值
            this.value = "显示";
        }
    }
    document.getElementById("bookManage").onclick = function () {
        //使用if判断，判断button按钮的value属性
        if (this.value === "显示") {
            // 如果是隐藏，那么点击后通过div盒子的id修改css样式，将display属性值改为none
            document.getElementById("bookInfo").style.display = "none";
            document.getElementById("bookType").style.display = "none";
            //this关键字获取的是当前对象  通过this关键字来修改button的value值
            this.value = "隐藏";
        } else if (this.value === "隐藏") {
            // 如果是显示，那么点击后通过div盒子的id修改css样式，将display属性值改为block
            document.getElementById("bookInfo").style.display = "block";
            document.getElementById("bookType").style.display = "block";
            //this关键字获取的是当前对象  通过this关键字来修改button的value值
            this.value = "显示";
        }
    }
    document.getElementById("userManage").onclick = function () {
        //使用if判断，判断button按钮的value属性
        if (this.value === "显示") {
            // 如果是隐藏，那么点击后通过div盒子的id修改css样式，将display属性值改为none
            document.getElementById("userInfo").style.display = "none";
            //this关键字获取的是当前对象  通过this关键字来修改button的value值
            this.value = "隐藏";
        } else if (this.value === "隐藏") {
            // 如果是显示，那么点击后通过div盒子的id修改css样式，将display属性值改为block
            document.getElementById("userInfo").style.display = "block";
            //this关键字获取的是当前对象  通过this关键字来修改button的value值
            this.value = "显示";
        }
    }
</script>
</body>