<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--  this line catches errors. if it is removed, NullPointerException does not appear in the HTTP Status 500 error -->
<%@ page errorPage="/error/error.jsp"%>
	<%-- purposely added .toUpperCase() to invoke error; cannot capitalize a null value --%>
<%
	String name = request.getParameter("name").toUpperCase();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error invoking yes</title>
</head>
	<body>
		<span> name inserted by user: <%= name %></span>
	</body>
</html>