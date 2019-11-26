<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>College Registration Form</title>
<h1>User Registration Form</h1>
</head>
<body id = "body" align="center">
<form action="Register" method="get">
		<table style="with: 100%">
 
			<tr>
				<td>User Id       : </td>
				<td><input type="text" id="userId" name="userId" /></td>
			</tr>
			<tr>
				<td>Name          : </td>
				<td><input type="text" id="name" name="name" /></td>
			</tr>
			<tr>
				<td>Age           : </td>
				<td><input type="text" id ="age" name="age" /></td>
			</tr>
			<tr>
				<td>Password      : </td>
				<td><input type="password" id="password" name="password" /></td>
			</tr>
			
			<tr>
				<td>Pet Name      : </td>
				<td><input type="text" id="petname" name="petname" /></td>
			</tr>
			<tr>
				<td>Gender        :  <select id="gender" name="gender">
                     <option input type="text"  value="Male" selected >Male</option>
                     <option input type="text"  value="Female">Female</option>
                  </select>
</td>
</tr>
		<tr>
				<td>Department    :  <select id="department" name="department">
                     <option input type="text"  value="Computer Science" selected >Computer Science</option>
                     <option input type="text"  value="Information Technology">Information Technology</option>
                  </select>
</td>
</tr>
		<tr>
				<td>Semester      :  <select id="semester" name="semester">
                     <option input type="text"  value="Semester-01" selected >Semester-01</option>
                     <option input type="text" value="Semester-02">Semester-02</option>
                     <option input type="text" value="Semester-03">Semester-03</option>
                  </select>
</td>
</tr>
	<tr>
				<td>
				  <input type="submit" value="Register"></form>
				</td>
</tr>
</body>

</html>