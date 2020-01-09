<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Course Search</title>
<div align="center">
<h2>Course Search</h2>
</div>
</head>
<body>
<form action="CourseSearch" method="post">
<div align="center">
		<table style="with: 100%" >
	<tr>
				<td>Department               </td>
<td>				 <select id="department">
                     <option input type="text"  value="Computer Science" selected >Computer Science</option>
                     <option input type="text"  value="Information and Technology">Information Technology</option>
                  </select>
</td>
</tr>
<br>
<br>	<tr>
				<td>Semester           </td>
				<td>  <select id="semester" name="semester">
                     <option input type="text"  value="Semester - 01" selected >Semester-01</option>
                     <option input type="text" value="Semester - 02">Semester-02</option>
                     <option input type="text" value="Semester - 03">Semester-03</option>
                  </select>
                  </td>
</tr>
<br>
<br>
<br><tr><td></td><td>
<input type="submit" text="Search" value="Search">
</td></tr>
</table>
</div>
</form>
</body>
</html>