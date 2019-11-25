<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户注册</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/register.css">
<script src="<%=request.getContextPath()%>/js/jquery-1.8.3.min.js"></script>
</head>
<body>
	<div id="head">
		<div id="head_logo"></div>
	</div>
	<div id="middle">
		<form action="register" onsubmit="return check()">
			<table>
				<tr>
					<td id="regmsg">用户注册</td>
				</tr>
				<tr>
					<td id="msg"></td>
				</tr>
				<tr>
					<td><input type="text" id="username" name="username"
						placeholder="请输入五位以内的用户名"></td>
				</tr>
				<tr>
					<td class="alertmsg"></td>
				</tr>
				<tr>
					<td><input type="password" id="userpwd" name="userpwd"
						placeholder="请输入长度大于六位的密码"></td>
				</tr>
				<tr>
					<td class="alertmsg"></td>
				</tr>
				<tr>
					<td><input type="password" id="repwd" name="repwd"
						placeholder="确认密码"></td>
				</tr>
				<tr>
					<td class="alertmsg"></td>
				</tr>

				<tr>
					<td><input type="text" id="useremail" name="useremail"
						placeholder="请输入邮箱"></td>
				<tr>
					<td class="alertmsg"></td>
				</tr>
				<tr>
					<td><input type="text" id="question" name="question"
						placeholder="请输入密保问题"></td>
				</tr>
				<tr>
					<td class="alertmsg"></td>
				</tr>
				<tr>
					<td><input type="text" id="answer" name="answer"
						placeholder="请输入密保问题答案"></td>
				</tr>
				<tr>
					<td class="alertmsg"></td>
				</tr>
				<tr>
					<td><input type="text" id="userphone" name="userphone"
						placeholder="请输入手机号"></td>
				</tr>
				<tr>
					<td><input type="checkbox" id="agree" name="agree"><a
						href="#">我已经阅读该协议</a></td>
				</tr>
				<tr>
					<td><input type="submit" id="ok" value="注册"></td>
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
	/* $("#head_logo").click(function() {
		location.href = "main.jsp";
	}); */
	function check() {
		var name = $("#username").val();
		var pwd = $("#userpwd").val();
		var repwd = $("#repwd").val();
		var question = $("#question").val();
		var answer = $("#answer").val();
		var phone = $("#userphone").val();
		var email = $("#useremail").val();
		if (name.length == 0) {
			$("#msg").html("*用户名不能为空");
			return false;
		} else if (pwd.length == 0) {
			$("#msg").html("*密码不能为空");
			return false;
		} else if (repwd.length == 0) {
			$("#msg").html("*确认密码不能为空");
			return false;
		} else if (repwd != pwd) {
			$("#msg").html("*两次输入密码不同");
			return false;
		} else if (email.length == 0) {
			$("#msg").html("*邮箱不能为空");
			return false;
		} else if (question.length == 0) {
			$("#msg").html("*密保问题不能为空");
			return false;
		} else if (answer.length == 0) {
			$("#msg").html("*答案不能为空");
			return false;
		} else if (phone.length == 0) {
			$("#msg").html("*手机号不能为空");
			return false;
		}
	}
</script>
</html>