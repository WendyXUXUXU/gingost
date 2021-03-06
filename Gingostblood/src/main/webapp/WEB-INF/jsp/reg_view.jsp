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
						href="#" onclick="dianwo()">我已经阅读该协议</a></td>
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

	<div id='zhezhao'>
		<div id="tankuang">
			<div id="header">《用户协议》</div>
			<div id="txt">
				<textarea cols="82" rows="28" readonly>
一、隐私政策
	本应用尊重并保护所有使用服务用户的个人隐私权。为了给您提供更准确、更有个性化的服务，本应用会按照本隐私权政策的规定使用和披露您的个人信息。但本应用将以高度的勤勉、审慎义务对待这些信息。除本隐私权政策另有规定外，在未征得您事先许可的情况下，本应用不会将这些信息对外披露或向第三方提供。本应用会不时更新本隐私权政策。 您在同意本应用服务使用协议之时，即视为您已经同意本隐私权政策全部内容。本隐私权政策属于本应用服务使用协议不可分割的一部分。
						
二、适用范围
	(a) 在您注册本应用帐号时，您根据本应用要求提供的个人注册信息；
	(b) 在您使用本应用网络服务，或访问本应用平台网页时，本应用自动接收并记录的您的浏览器和计算机上的信息，包括但不限于您的IP地址、浏览器的类型、使用的语言、访问日期和时间、软硬件特征信息及您需求的网页记录等数据；
	© 本应用通过合法途径从商业伙伴处取得的用户个人数据。
	3.您了解并同意，以下信息不适用本隐私权政策：
	(a) 您在使用本应用平台提供的搜索服务时输入的关键字信息；
	(b) 本应用收集到的您在本应用发布的有关信息数据，包括但不限于参与活动、成交信息及评价详情；
	© 违反法律规定或违反本应用规则行为及本应用已对您采取的措施。
三、信息使用
	(a)本应用不会向任何无关第三方提供、出售、出租、分享或交易您的个人信息，除非事先得到您的许可，或该第三方和本应用（含本应用关联公司）单独或共同为您提供服务，且在该服务结束后，其将被禁止访问包括其以前能够访问的所有这些资料。
	(b) 本应用亦不允许任何第三方以任何手段收集、编辑、出售或者无偿传播您的个人信息。任何本应用平台用户如从事上述活动，一经发现，本应用有权立即终止与该用户的服务协议。
	© 为服务用户的目的，本应用可能通过使用您的个人信息，向您提供您感兴趣的信息，包括但不限于向您发出产品和服务信息，或者与本应用合作伙伴共享信息以便他们向您发送有关其产品和服务的信息（后者需要您的事先同意）。
四、信息披露
	在如下情况下，本应用将依据您的个人意愿或法律的规定全部或部分的披露您的个人信息：
	(a) 经您事先同意，向第三方披露；
	(b)为提供您所要求的产品和服务，而必须和第三方分享您的个人信息；
	© 根据法律的有关规定，或者行政或司法机构的要求，向第三方或者行政、司法机构披露；
	(d) 如您出现违反中国有关法律、法规或者本应用服务协议或相关规则的情况，需要向第三方披露；
	(e) 如您是适格的知识产权投诉人并已提起投诉，应被投诉人要求，向被投诉人披露，以便双方处理可能的权利纠纷；
	(f) 在本应用平台上创建的某一交易中，如交易任何一方履行或部分履行了交易义务并提出信息披露请求的，本应用有权决定向该用户提供其交易对方的联络方式等必要信息，以促成交易的完成或纠纷的解决。
	(g) 其它本应用根据法律、法规或者网站政策认为合适的披露。
五、信息存储和交换
	本应用收集的有关您的信息和资料将保存在本应用及（或）其关联公司的服务器上，这些信息和资料可能传送至您所在国家、地区或本应用收集信息和资料所在地的境外并在境外被访问、存储和展示。
六、Cookie的使用
	(a) 在您未拒绝接受cookies的情况下，本应用会在您的计算机上设定或取用cookies ，以便您能登录或使用依赖于cookies的本应用平台服务或功能。本应用使用cookies可为您提供更加周到的个性化服务，包括推广服务。
	(b) 您有权选择接受或拒绝接受cookies。您可以通过修改浏览器设置的方式拒绝接受cookies。但如果您选择拒绝接受cookies，则您可能无法登录或使用依赖于cookies的本应用网络服务或功能。
	© 通过本应用所设cookies所取得的有关信息，将适用本政策。
七、信息安全
	(a) 本应用帐号均有安全保护功能，请妥善保管您的用户名及密码信息。本应用将通过对用户密码进行加密等安全措施确保您的信息不丢失，不被滥用和变造。尽管有前述安全措施，但同时也请您注意在信息网络上不存在“完善的安全措施”。
        (b) 在使用本应用网络服务进行网上交易时，您不可避免的要向交易对方或潜在的交易对方进行信息交流，若在此过程中因个人原因造成的信息泄露或者财产损失，我方概不负责。
八、本隐私政策的更改
	(a)如果决定更改隐私政策，我们会在本政策中、本公司网站中以及我们认为适当的位置发布这些更改，以便您了解我们如何收集、使用您的个人信息，哪些人可以访问这些信息，以及在什么情况下我们会透露这些信息。
	(b)本公司保留随时修改本政策的权利，因此请经常查看。如对本政策作出重大更改，本公司会通过网站通知的形式告知。
请您妥善保护自己的个人信息，仅在必要的情形下向他人提供。如您发现自己的个人信息泄密，尤其是本应用用户名及密码发生泄露，请您立即联络本应用客服，以便本应用采取相应措施。
如您对本政策或其他相关事宜有疑问，请通过 https://***.***.com/ 与我们联系。您也可将您的问题发送至***@***.com或寄到如下地址：
地址：*** 法务部 数据及隐私保护中心（收）
邮编：***。
					</textarea>
			</div>

			<input type="button" id="btn" value="确定" onclick="hidder()" />

		</div>
	</div>
</body>
<script type="text/javascript">
	$("#head_logo").click(function() {
		location.href = "main.jsp";
	});
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
	document.getElementById('zhezhao').style.display = "none";
	
	function dianwo() {
		document.getElementById('zhezhao').style.display = "";
		document.getElementById('middle').style.display = "none";
		document.getElementById('down').style.display = "none";
		document.getElementById('LezzyGingost').style.display = "none";
	}

	function hidder() {
		document.getElementById('zhezhao').style.display = "none";
		document.getElementById('middle').style.display = "";
		document.getElementById('down').style.display = "";
		document.getElementById('LezzyGingost').style.display = "";
	}
</script>
</html>