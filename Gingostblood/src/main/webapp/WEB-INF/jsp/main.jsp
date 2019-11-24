<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>首页</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/head.css">
</head>
<body>
<div id="head">
			<a href="login" name="login">亲,请登录 </a> 
			<a href="register" name="reg">免费注册</a>
			<%
			Date d=new Date();
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日");
			String now=sdf.format(d);
			%>
			<div id="head_time"><%=now %></div>
			<img  src="<%=request.getContextPath() %>/img/main.png">
			<a href="#" name="main">首页</a>
			<img  src="<%=request.getContextPath() %>/img/mytb.jpg" >
			<a href="#" name="myinfo">我的淘宝</a>
			<img  src="<%=request.getContextPath() %>/img/car.jpg"   >
			<a href="#" name="car">购物车</a>
			<img  src="<%=request.getContextPath() %>/img/about.jpg" >
			<a href="#" name="about">关于我们</a>
			<img  src="<%=request.getContextPath() %>/img/navigation.png" >
			<a href="#" name="navigation">网站导航</a>
		</div>
		<hr>
		<div id="middle"></div>
		<div id="down"></div>
</body>
</html>