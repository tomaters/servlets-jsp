<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>JSTL Example</title>
</head>
<body>
<!-- running a for loop -->
<c:forEach begin="1" end="10" step="1" varStatus="num">
${num.count}<br>
</c:forEach>
<hr>

<!-- sum of odd numbers from 1 to 100 -->
<c:set var="sum" value="0" />
<c:forEach var="i" begin="1" end="100" step="2">
<c:set var="sum" value="${sum + i}" />
</c:forEach>
result: ${sum}
<hr>

<!-- int array from index i[2] to i[4] -->
<c:set var="intArray" value="<%= new int[] {1,2,3,4,5} %>" />
<c:forEach var="i" items="${intArray}" begin="2" end="4">
 [${i}]
</c:forEach>

</body>
</html>