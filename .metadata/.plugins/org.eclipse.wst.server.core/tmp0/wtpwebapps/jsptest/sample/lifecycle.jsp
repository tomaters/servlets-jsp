<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	private int numOne = 0;
	public void jspInit(){
   		System.out.println("jspInit() called");
	}
	public void jspDestroy(){
	    System.out.println("jspDestroy() called");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
		<%
			int numTwo = 0;
			this.numOne++;
			numTwo++;
		%>
		<ul>
		    <li>numOne : <%=this.numOne%></li>
		    <li>numTwo : <%=numTwo%></li>
		</ul>
	</body>
</html>