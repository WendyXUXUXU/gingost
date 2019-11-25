<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户登录</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/login.css">
<script src="<%=request.getContextPath() %>/js/jquery-1.8.3.min.js"></script>
</head>
<body>
	<div id="head">
		<div id="head_logo"></div>
	</div>
	<div id="middle">
		<form action="login" method="post" onsubmit="return check()">
			<table>
				<tr>
					<td id="logmsg">用户登录</td>
				</tr>
				<tr>
					<td id="alertmsg">${msg}</td>
				</tr>
				<tr>
					<td><input type="text" name="username" id="username"
						placeholder="请输入用户名"></td>
				</tr>
				<tr>
					<td id="space"></td>
				</tr>
				<tr>
					<td><input type="password" name="userpwd" id="userpwd"
						placeholder="请输入密码"></td>
				</tr>
				<tr>
					<td id="space"></td>
				</tr>
				<tr>
					<td><input type="submit" name="ok" value="登录"></td>
				</tr>
				<tr>
					<td id="space2"></td>
				</tr>
				<tr>
					<td><a href="#">忘记密码</a>&emsp;<a href="#">还没有账号？点此注册</a></td>
				</tr>
			</table>
		</form>
	</div>
	<div id="down">
		<hr>
		<a href="">关于本人</a>&emsp;|&emsp; <a href="">@Lezzy</a>&emsp;|&emsp; <a
			href="">@Gingost</a>&emsp;|&emsp; <a href="">SUSE</a>&emsp;|&emsp; <a
			href="">轻化工大学</a>
		<hr>
	</div>
	<div id="LezzyGingost">©2019-2020&emsp;最终著作权归Gingost/Lezzy所有</div>
</body>
<script type="text/javascript">
	function check() {
		var name = $("#username").val();
		var pwd = $("#userpwd").val();
		if (name.length == 0) {
			$("#alertmsg").html("用户名不能为空")
			return false;
		} else if (pwd.length == 0) {
			$("#alertmsg").html("密码不能为空")
			return false;
		}
	}
	$(function() {
		$("#head_logo").click(function() {
			location.href = "main.jsp";
		});
	});
</script>
</html>