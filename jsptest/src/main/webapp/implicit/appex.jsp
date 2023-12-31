<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// retrieve context data
	Enumeration<String> enumerationDataList = application.getInitParameterNames();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>retrieve parameter data</title>
<!-- Bootstrap: Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap: Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container m-5 mx-auto">
	<ul class="list-group">
		<%
		while(enumerationDataList.hasMoreElements()) {
			String parameterName = enumerationDataList.nextElement();
			String parameterValue = application.getInitParameter(parameterName);
		%>
		<li class="list-group-item text-success bg-light">
			<%= parameterName %> = <%= parameterValue %>
		</li>		
		<% } %>
	</ul>
</div>
</body>
</html>