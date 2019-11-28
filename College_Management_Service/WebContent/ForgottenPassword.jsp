<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>

<h1 align="center">
                              Forgot Password
</h1>

</head>
<body>
<form action="loginServlet" method="post">
		<div align="center">
		<table style="with: 100%">
 
			<tr>
				<td>User Id</td>
				<td><input type="text" id="" name="userId" /></td>
			</tr>
			<br>
			<br>
				<tr>
				<td>What is your pet's name?</td>
				<td><input type="petname" id="petname" /></td>
			</tr>
		</table>
		<br>
<input type="submit" value="validate" /></form>
</div>
</body>
</html>