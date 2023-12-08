<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>JSTL Example</title>
</head>
<body>
<!--  conditionals work with JSTL (run and add to url '?type=' 'guest' and 'member'. but there is no else function -->
<c:if test="${3>4}">
1. False; should not return anything. </c:if>
<c:if test="${param.type eq 'guest'}">
2. Visit home page<br></br>
Please register </c:if>
<c:if test="${param.type eq 'member'}">
Welcome</c:if>
</body>
</html>
