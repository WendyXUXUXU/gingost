<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户登录</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/login.css">
<script src="<%=request.getContextPath() %>/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
	function check() {
		var name = $("#name").val();
		var pwd = $("#pwd").val();
		if (name.length == 0) {
			$("#alert2").show();
		} else if (pwd.length == 0) {
			$("#alert2").hide();
			$("#alert3").show();
		} else {
			$("#alert2").hide();
			$("#alert3").hide();
		}
	}
	$(function() {
		$("#head_logo").click(function() {
			location.href = "main.jsp";
		});
	});
</script>
</head>
<body>
	<div id="head">
		<div id="head_logo"></div>
	</div>
	<div id="middle">
		<form action="">
			<table>
				<tr>
					<td id="logmsg">用户登录</td>
				</tr>
				<tr>
					<td class="alertmsg" id="alert1" style="display: none;">请输入正确的账户名或者密码</td>
				</tr>
				<tr>
					<td class="alertmsg" id="alert2" style="display: none">*用户名不能为空</td>
				</tr>
				<tr>
					<td class="alertmsg" id="alert3" style="display: none">*密码不能为空</td>
				</tr>
				<tr>
					<td><input type="text" name="name" id="name"
						placeholder="请输入用户名"></td>
				</tr>
				<tr>
					<td id="space"></td>
				</tr>
				<tr>
					<td><input type="password" name="pwd" id="pwd"
						placeholder="请输入密码"></td>
				</tr>
				<tr>
					<td id="space"></td>
				</tr>
				<tr>
					<td><input type="submit" name="ok" value="登录"
						onclick="check()"></td>
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
</html>