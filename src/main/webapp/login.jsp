<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>冲鸭图书管理系统</title>

<meta
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
	name="viewport">
	<link rel="stylesheet" href="css/login.css">

</head>

<body class="hold-transition login-page">
<form method="post" action="/admin/login.do" >
<div class="login_div">
	<i></i>
	<div class="top">
		<h4>冲鸭图书管理系统</h4>
	</div>
	<table class="login_table">
		<tr>
			<td><input type="text" placeholder="username" name="username"></td>
		</tr>
		<tr>
			<td><input type="password" placeholder="password" name="password"></td>
		</tr>
		<tr>
			<td><input type="submit" class="submit" value="登陆"></td>
		</tr>
	</table>
</div>
</form>
</body>

</html>