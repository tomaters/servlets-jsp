<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib prefix="elfunc" uri="/WEB-INF/tld/elfunctions.tld" %>
<%
	java.util.Date today = new java.util.Date();
	request.setAttribute("today", today);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL example 6</title>
</head>
<body>
It is <b>${elfunc:dateFormat(today)}</b>
</body>
</html>