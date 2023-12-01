<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>Print header list</title></head>
<body>
<%
    Enumeration enumData = request.getHeaderNames();
    while(enumData.hasMoreElements()) {
        String headerName = (String)enumData.nextElement();
        String headerValue = request.getHeader(headerName);
%>
	<%= headerName %> = <%= headerValue %> <br></br>
<%
    }
%>
</body>
</html>