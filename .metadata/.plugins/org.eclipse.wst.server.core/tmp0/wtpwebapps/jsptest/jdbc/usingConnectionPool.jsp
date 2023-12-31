<!--  imported from Java Resources > jdbc -->
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="jdbc.ConnectionPool"%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Connection connection = null;
Statement statement = null;
ConnectionPool connectionPool = ConnectionPool.getInstance();
ResultSet resultSet = null;
String id = "", passwd = "", name = "", mem_num1 = "", mem_num2 = "", e_mail = "", phone = "", zipcode = "",
		address = "", job = "";
int counter = 0;
try {
	connection = connectionPool.getConnection();
	statement = connection.createStatement();
	resultSet = statement.executeQuery("SELECT * FROM TEMPMEMBER");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP-DB connection</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<h2>JSP-DB connection</h2>
	<br></br>
	<h3>User info</h3>
	<table bordercolor="#0000ff" border="1">
		<tr>
			<td><strong>ID</strong></td>
			<td><strong>PASSWD</strong></td>
			<td><strong>NAME</strong></td>
			<td><strong>MEM_NUM1</strong></td>
			<td><strong>MEM_NUM2</strong></td>
			<td><strong>E_MAIL</strong></td>
			<td><strong>PHONE</strong></td>
			<td><strong>ZIPCODE/ADDRESS</strong></td>
			<td><strong>JOB</strong></td>
		</tr>
		<%
		if (resultSet != null) {
			while (resultSet.next()) {
				id = resultSet.getString("id");
				passwd = resultSet.getString("passwd");
				name = resultSet.getString("name");
				mem_num1 = resultSet.getString("mem_num1");
				mem_num2 = resultSet.getString("mem_num2");
				e_mail = resultSet.getString("e_mail");
				phone = resultSet.getString("phone");
				zipcode = resultSet.getString("zipcode");
				address = resultSet.getString("address");
				job = resultSet.getString("job");
		%>
		<tr>
			<td><%=id%></td>
			<td><%=passwd%></td>
			<td><%=name%></td>
			<td><%=mem_num1%></td>
			<td><%=mem_num2%></td>
			<td><%=e_mail%></td>
			<td><%=phone%></td>
			<td><%=zipcode%>/<%=address%></td>
			<td><%=job%></td>
			<%
			counter++;
			} //end while
			} //end if
			%>
		</tr>
	</table>
	<br></br> total records :
	<%=counter%>
	<%
	} catch (SQLException sqlException) {
	System.out.println("sql exception");
	} catch (Exception exception) {
	System.out.println("exception");
	} finally {
	if (resultSet != null)
		try {
			resultSet.close();
		} catch (SQLException ex) {
		}
	if (statement != null)
		try {
			statement.close();
		} catch (SQLException ex) {
		}
	if (connection != null)
		try {
			//conn.close();
			connectionPool.releaseConnection(connection);
		} catch (Exception ex) {
		}
	}
	%>
</body>
</html>