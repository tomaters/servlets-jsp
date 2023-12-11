<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="loginID" value="${sessionScope.loginID}" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Login</title>
<link href="style.css" type="test/css" rel="stylesheet" />
</head>
<body>
	<c:choose>
		<c:when test="${loginID ne null}">
			<table width="300" border="1">
				<tr>
					<td colspan="3" align="center">Welcome, <c:out value="${loginID }" /></td>
				</tr>
				<tr>
					<td align="center" width="100"><a
						href="member.mdo?cmd=modifyForm">Edit information</a></td>
					<td align="center" width="100"><a
						href="member.mdo?cmd=deleteForm">Delete account</a></td>
					<td align="center" width="100"><a href="member.mdo?cmd=logout">Log out</a></td>
				</tr>
			</table>
		</c:when>
		<c:otherwise>
			<c:if test="${requestScope.check eq 0}">
				<script type='text/javascript'>
					alert('Wrong password');
				</script>
			</c:if>
			<c:if test="${requestScope.check eq 2}">
				<script type='text/javascript'>
					alert('ID does not exist');
				</script>
			</c:if>
			<form method="post" action="member.mdo?cmd=loginProc">
				<table width="300" border="1">
					<tr>
						<td colspan="2" align="center">Log in</td>
					</tr>
					<tr>
						<td align="right" width="100">ID :</td>
						<td width="100">&nbsp;&nbsp; <input type="text" name="id"
							size="20" /></td>
					</tr>
					<tr>
						<td align="right" width="100">Password :</td>
						<td width="100">&nbsp;&nbsp; <input type="password"
							name="pass" size="20" /></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit"
							value="Log in" />&nbsp;&nbsp; <input type="button" value="Register"
							onClick="javascript:window.location='?cmd=regForm'" /></td>
					</tr>
				</table>
			</form>
		</c:otherwise>
	</c:choose>
</body>
</html>