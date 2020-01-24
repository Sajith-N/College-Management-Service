<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>

<h1 align="center">
                              Forgot Password
</h1>

<script type="text/javascript">
            
function validateForm() {
	 document.getElementById('class1').style.display = 'block';
  var x = document.getElementById("myForm").elements.namedItem("userId").value;
  var y = document.getElementById("myForm").elements.namedItem("petname").value;
  console.log(x);
  console.log(y);
  var letters =  /^[a-zA-Z];
  if (y.test(letters) || x=="" ) {
	  document.getElementById("error").innerHTML = "User Id/Security answer is invalid";
	  console.log("Inside the letters test block");
	 return false;
  }
  document.getElementById('class1').style.display = 'block';
 true;
}
function myFunction(){
	  document.getElementById('class1').style.display = 'none';
}
</script>

</head>
<body onload="myFunction()">
<p id="error"></p>
<form id="myForm" action="myForm1">
		<div align="center">
		<table style="with: 100%">
		<br>
		
			<tr>
				<td>User Id</td>
				<td><input type="text" name="userId" /></td>
			</tr>
			<tr>
			<tr>
				<tr>
				<td>What is your pet's name?</td>
				<td><input type="text" name="petname" /></td>
			</tr>
		</table>
		
		<br>
		<br>
<input id="temp1" type="submit" value="Validate" onclick="validateForm()" />
</div>
</form>
<div id="class1">
<form name="myForm1">
<h1 align="center">
                              Reset Password
</h1>
		<div align="center">
		<table style="with: 100%">
		<br>
		
			<tr>
				<td>New Password :</td>
				<td><input type="password" name="newpassword" /></td>
			</tr>
			<tr>
			<tr>
				<tr>
				<td>Confirm New Password :</td>
				<td><input type="password" name="confirmnewpassword" /></td>
			</tr>
		</table>
		
		<br>
		<br>
<input type="submit" value="Submit" onclick="validateForm()" />
</div>
</form>
</div>
</body>
</html>