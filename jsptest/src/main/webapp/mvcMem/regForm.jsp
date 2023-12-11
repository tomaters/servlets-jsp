<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Registration form</title>
<link href="css/style.css" type="test/css" rel="stylesheet" />
<script type="text/javascript" src="script.js"></script>
</head>
<body>
	<form method="post" action="member.mdo?cmd=regProc" name="regForm">
		<table border="1">
			<tr>
				<td colspan="2" align="center">Enter registration information</td>
			</tr>
			<tr>
				<td align="right">ID :</td>
				<td><input type="text" name="id" size="20" />&nbsp; <input
					type="button" value="Check ID" onClick="idCheck(this.form.id.value)" /></td>
			</tr>
			<tr>
				<td align="right">Password :</td>
				<td><input type="password" name="pass" /></td>
			</tr>
			<tr>
				<td align="right">Re-enter password :</td>
				<td><input type="password" name="repass" /></td>
			</tr>
			<tr>
				<td align="right">Name :</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td align="right">Phone number :</td>
				<td><select name="phone1">
						<option value="02">02</option>
						<option value="011">011</option>
				</select>&nbsp;-&nbsp; <input type="text" name="phone2" size="5" />
					&nbsp;-&nbsp; <input type="text" name="phone3" size="5" /></td>
			</tr>
			<tr>
				<td align="right">Email address :</td>
				<td><input type="text" name="email" /></td>
			</tr>
			<tr>
				<td align="right">Zip code :</td>
				<td><input type="text" name="zipcode" size="20" />&nbsp; <input
					type="button" value="Search" onClick="zipCheck()" /></td>
			</tr>
			<tr>
				<td align="right">Address 1 :</td>
				<td><input type="text" name="address1" size="50" /></td>
			</tr>
			<tr>
				<td align="right">Address 2 :</td>
				<td><input type="text" name="address2" size="30" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="button"
					value="Register" onClick="inputCheck()" />&nbsp;&nbsp; <input
					type="reset" value="Reset" /></td>
			</tr>
		</table>
	</form>
</body>
</html>