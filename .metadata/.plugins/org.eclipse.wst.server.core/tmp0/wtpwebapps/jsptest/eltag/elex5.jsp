<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("utf-8");%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL Example 5</title>
</head>
<body>
<H3>Recording parameter values</H3>
<FORM action="elex5.jsp" method="post">
 String : <input type="text" name="name" value="${param['name']}">
 <input type="submit" value="Submit">
</FORM>
<P>
String : ${param.name}</P>
</body>
</html>