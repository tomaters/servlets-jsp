<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${check==1}">
	<meta http-equiv="Refresh" content="0;url=/board/list.do?pageNum=${pageNum}">
</c:if>
<c:if test="${check==0}">
Password is incorrect
<br>
<a href="javascript:history.go(-1)"> Return to edit form </a>
</c:if>
