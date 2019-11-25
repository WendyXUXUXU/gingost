<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>首页</title>
<%String path=request.getContextPath();%>
<link rel="stylesheet" href="<%=path%>/css/head_login.css">
</head>
<body>
<div id="head">
			<a href="#" name="showname">你好,${user.username}</a>
			<a href="lost" name="lost">注销</a>
			<%
			Date d=new Date();
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日");
			String now=sdf.format(d);
			%>
			<div id="head_time"><%=now %></div>
			<img  src="<%=path%>/img/main.png">
			<a href="#" name="main">首页</a>
			<img  src="<%=path%>/img/mytb.jpg" >
			<a href="#" name="myinfo">我的淘宝</a>
			<img  src="<%=path%>/img/car.jpg"   >
			<a href="#" name="car">购物车</a>
			<img  src="<%=path%>/img/about.jpg" >
			<a href="#" name="about">关于我们</a>
			<img  src="<%=path%>/img/navigation.png" >
			<a href="#" name="navigation">网站导航</a>
		</div>
		<hr>
		<div id="middle"></div>
		<div id="down"></div>
</body>
</html>