<%@page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	Date date = new Date();
	String displayDate = date.toString();
%>
<link rel="stylesheet" href="./css/jsptest.css">
<style>
	h1{
	background-color: yellow;
	}
</style>
</head>
<body>
	<% for(int i = 0; i < 10; i ++){ %>
	<h1><%= displayDate %></h1>
	<% } %>
</body>
</html>