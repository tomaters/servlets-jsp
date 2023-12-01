<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Print requested parameters</title>
</head>
<body>
	<b> request.getParameter() method: </b><br></br>
		name parameter = <%= request.getParameter("name") %> <br></br>
		address parameter = <%= request.getParameter("address") %> <br></br><br></br>
		
	<b>request.getParameterValues() method: </b><br></br>
	<%
		String[] values = request.getParameterValues("animal");
		if(values != null) {
			for(int i = 0; i < values.length; i++) {
				%> <%= values[i] %> <% 
			}
		}
	%>
	<br></br><br></br>
	
	<b>request.getParameterNames() method: </b><br></br>
	<%
		Enumeration enumerationData = request.getParameterNames();
		while(enumerationData.hasMoreElements()) {
			String parameterName = (String)enumerationData.nextElement(); 
			%> <%= parameterName %> <% 
		}
	%>
	<br></br><br></br>
	
	<b>request.getParameterMap() method: </b><br></br>
	<%
		Map parameterMap = request.getParameterMap();
		String[] nameParameter = (String[])parameterMap.get("name");
		if(nameParameter != null) {
			%> name = <%= nameParameter[0] %> <%
		}
	%>
</body>
</html>