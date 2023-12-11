<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Modify information</title>
<link href="css/style.css" type="test/css" rel="stylesheet"/>
<script type="text/javascript" src="script.js"></script>
</head>
<body>
	<form method="post" action="member.mdo?cmd=modifyProc" name="regForm">
		<table border="1">
			<tr><td colspan="2" align="center">Enter information to edit</td></tr>
			<tr>
				<td align="right">ID: </td>
				<td><input type="text" name="id" value="${id}" />
				<c:out value="${id}"/></td>
			</tr>
			<tr>
				<td align="right"> Password: </td>
				<td><input type="password" name="pass" value="${pass}" />
				</td>
			</tr>
			<tr>
				<td align="right">Re-enter password: </td>
				<td><input type="password" name="repass" value="${pass}" />
				</td>
			</tr>
			<tr>
			<td align="right" >Name :</td>
				<td><input type="text" name="name" value="${name}"/>
				<!-- <c:out value="${name}"/></td></tr> -->
			<tr>
				<td align="right">Phone number: </td>
				<td><select name="phone1">
					<option value="02" ${phone1 eq '02' ? "selected='selected'" : 'null'}>02</option>
					<option value="010" ${phone1 eq '010' ? "selected='selected'" : 'null'}>010</option>
					<option value="031" ${phone1 eq '031' ? "selected='selected'" : 'null'}>031</option>					
					<option value="032" ${phone1 eq '032' ? "selected='selected'" : 'null'}>032</option>					
				</select>&nbsp;-&nbsp;
				<input type="text" name="phone2" size="5" value="${phone2}"/>&nbsp;-&nbsp; 
				<input type="text" name="phone3" size="5" value="${phone3}"/>&nbsp;-&nbsp; 
			</td></tr>
			<tr>
				<td align="right">Email: </td>
				<td><input type="text" name="email" value="${email}"/></td>
			</tr>
			<tr>
				<td align="right">Zipcode: </td>
				<td><input type="text" name="zipcode" size="20" value="${zipcode}" /> &nbsp;
				<input type="button" value="Find" onClick="zipCheck()"/></td>
			</tr>
			<tr>
				<td align="right" >Address 1 :</td>
				<td><input type="text" name="address1" size="50" value="${address1}"/></td></tr>
 			<tr>
				<td align="right" >Address 2 :</td>
				<td><input type="text" name="address2" size="30" value="${address2}"/></td>
			</tr>
 			<tr>
				<td colspan="2" align="center" >
				<input type="button" value="Submit" onClick="inputCheck()"/>&nbsp;&nbsp;
				<input type="button" value="Cancel" onclick="javascript:window.location='member.mdo?cmd=login'"/>
			</td></tr>
		</table>
	</form>
</body>
</html>