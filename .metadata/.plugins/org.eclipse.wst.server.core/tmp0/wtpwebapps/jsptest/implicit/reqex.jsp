<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Create a form</title>
</head>
<body>
Fill out the form and click 'Send'<br></br>
<form action="viewParameter.jsp" method="post">
	Name: <br></br><input type="text" name="name" size="10"> <br></br>
	Address: <br></br><input type="text" name="address" size="30"> <br></br>	
	Favorite animal:<br></br>
	<input type="checkbox" name="animal" value="dog"> Dog
	<input type="checkbox" name="animal" value="cat"> Cat
	<input type="checkbox" name="animal" value="armadillo"> Armadillo
	<br></br>
	<input type="submit" value="Send">
</form>
</body>
</html>