<%--
  Created by IntelliJ IDEA.
  User: 18236
  Date: 2020/8/15
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <div class="left" >
            <ul>
                <li class="father"><button href="" class="userManage" id="userManage" value="隐藏">用户管理</button><span></span></li>
                <li  id="userInfo" class="son"><button onclick="window.location.href='/user/userInfo.do' "  class="borrowManage" >用户信息</button></li>
                <li class="father"><button href="#" class="bookManage" id="bookManage" value="隐藏">图书管理</button><span></span></li>
                <li  id="bookInfo" class="son"><button onclick="window.location.href='/user/bookInfo.do' "class="borrowManage"  >图书信息</button></li>
                <li  id="bookType" class="son"><button onclick="window.location.href='#' "  class="borrowManage" >图书类型</button></li>
                <li class="father"><button class="borrowManage" id="borrowManage" value="隐藏">借阅管理</button><span></span></li>
                <li  id="borrowBook" class="son"><button onclick="window.location.href='/borrow/findAll.do?state=1&type=1' " class="borrowManage"  >借阅图书</button></li>
                <li  id="borrowInfo" class="son"><button onclick="window.location.href='/borrow/findAll.do?state=0&type=1' "  class="borrowManage" >借阅信息</button></li>

            </ul>
        </div>




