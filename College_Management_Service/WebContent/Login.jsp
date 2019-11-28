<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>College Login Page</title>
</head>
<body>
<h1 align="center">
Login
</h1>
<div id="message">
${message}
</div>
<div align="center">
<form action="loginServlet" method="post">
		
		<table style="with: 50%">
 
			<tr>
				<td>UserName</td>
				<td><input type="text" name="username" /></td>
			</tr>
				<tr>
				<td>Password</td>
				<td><input type="password" name="password" /></td>
			</tr>
		</table>
		<pre>
<a href="http://localhost:8080/College_Management_Services/ForgottenPassword.jsp">Forgot Password</a>   <a href="http://localhost:8080/College_Management_Service/Register.jsp">Register</a>
</pre>
		<input type="submit" value="Login" /></form>
		</div>
</body>
</html>