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
<script>
function validateForm() {
  var x = document.forms["myForm"]["userId"].value;
  var y = document.forms["myForm"]["petname"].value;
  var letters = /^[A-Za-z]+$/;
  if (x == "" || y.match(letters)) {
    alert("Name must be filled out");
    return false;
  }
}
</script>
<form name="myForm" action="loginServlet" method="post" ">
		<div align="center">
		<table style="with: 100%">
		<br>
		
			<tr>
				<td>User Id</td>
				<td><input type="text" id="userId" /></td>
			</tr>
			<br>
			<br>
				<tr>
				<td>What is your pet's name?</td>
				<td><input type="text" id="petname" /></td>
			</tr>
		</table>
		
		<br>
		<br>
<input type="submit" value="validate" onclick="return validateForm()">
</input>
</form>
</div>
</body>
</html>