<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  declare member variables and methods -->
<%!
	public String declaration = "cool member String";
	public String getDeclaration(){
		return this.declaration;
	}
%>
<!--  java code and declare local variables -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hello jsp</title>
</head>
<%
	String scriptlet = "scriptlets are constructed in the service method";
	out.println("print member variable through java code: \"" + this.declaration + "\"");
%>
<body>
	<h3>
		<!--  expression; print -->
		print declared variable in html body: 
		"<%=
			this.getDeclaration()
		%>"
	</h3>
</body>
</html>