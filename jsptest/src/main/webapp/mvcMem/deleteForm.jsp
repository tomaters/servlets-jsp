<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Delete account</title>
<script type="text/javascript">
	function checkIt() {
		if (!document.myForm.pass.value) {
			alert("Incorrect password");
			document.myForm.pass.focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body onload="javascript:document.myform.pass.focus();">
	<form action="member.mdo?cmd=deleteProc" name="myForm" method="post" onsubmit="return checkIt()">
		<table width="260" border="1" align="center">
			<tr>
				<td colspan="2" align="center"><b>Delete account</b></td>
			</tr>
			<tr>
				<td width="150"><b>Enter password</b></td>
				<td width="110"><input type="password" name="pass" size="15"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="submit" value="Delete account">
				<input type="button" value="Cancel" onclick="javascript:window.location.href='member.mdo?cmd=login'"></td>
			</tr>
		</table>
	</form>
</body>
</html>