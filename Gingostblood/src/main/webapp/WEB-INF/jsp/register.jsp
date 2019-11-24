<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户注册</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/register.css">
<script src="<%=request.getContextPath() %>/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#head_logo").click(function() {
			location.href = "main.jsp";
		});
		$("#ok").click(function() {
			var name = $("#name").val();
			var pwd = $("#pwd").val();
			var repwd = $("#repwd").val();
			var question = $("#question").val();
			var answer = $("#answer").val();
			var phone = $("#phone").val();
			var emial = $("#email").val();
			if (name.length == 0) {
				$("#alert1").html("*用户名不能为空");
			}else if (pwd.length == 0) {
				$("#alert1").html("*密码不能为空");
			} else if (repwd.length == 0) {
				$("#alert1").html("*确认密码不能为空");
			} else if (repwd != pwd) {
				$("#alert1").html("*两次输入密码不同");
			} else if (email.length == 0) {
				$("#alert1").html("*邮箱不能为空");
			} else if (question.length == 0) {
				$("#alert1").html("*密保问题不能为空");
			} else if (answer.length == 0) {
				$("#alert1").html("*答案不能为空");
			} else if (phone.length == 0) {
				$("#alert1").html("*电话不能为空");
			}else{
				$("#alert1").html("");
			}
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
					<td id="regmsg">用户注册</td>
				</tr>
				<tr>
					<td class="alertmsg" id="alert1"></td>
				</tr>
				<tr>
					<td><input type="text" id="name" name="name"
						placeholder="请输入用户名"></td>
				</tr>
				<tr>
					<td class="alertmsg" id="alert2"></td>
				</tr>
				<tr>
					<td><input type="password" id="pwd" name="pwd"
						placeholder="请输入密码"></td>
				</tr>
				<tr>
					<td class="alertmsg" id="alert3"></td>
				</tr>
				<tr>
					<td><input type="password" id="repwd" name="repwd"
						placeholder="请确认密码"></td>
				</tr>
				<tr>
					<td class="alertmsg" id="alert4"></td>
				</tr>

				<tr>
					<td><input type="text" id="email" name="email"
						placeholder="请输入邮箱"></td>
				<tr>
					<td class="alertmsg" id="alert5"></td>
				</tr>
				<tr>
					<td><input type="text" id="question" name="question"
						placeholder="请输入密保问题"></td>
				</tr>
				<tr>
					<td class="alertmsg" id="alert6"></td>
				</tr>
				<tr>
					<td><input type="text" id="answer" name="answer"
						placeholder="请输入密保问题答案"></td>
				</tr>
				<tr>
					<td class="alertmsg" id="alert7"></td>
				</tr>
				<tr>
					<td><input type="text" id="phone" name="phone"
						placeholder="请输入手机号"></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="agree" name="agree"><a
						href="#">我已经阅读该协议</a></td>
				</tr>
				<tr>
					<td><input type="button" id="ok" value="注册"></td>
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