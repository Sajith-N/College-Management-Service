<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  width: 130px;
  position: fixed;
  z-index: 1;
  top: 20px;
  left: 10px;
  background: #eee;
  overflow-x: hidden;
  padding: 8px 0;
}

.sidenav a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 25px;
  color: #2196F3;
  display: block;
}

.sidenav a:hover {
  color: #064579;
}

.main {
  margin-left: 140px; /* Same width as the sidebar + left position in px */
  font-size: 28px; /* Increased text to enable scrolling */
  padding: 0px 10px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
</head>
<body>

<div class="sidenav">
 <a href="/College_Management_Service/CourseSearch.jsp">Course Search Page</a>
 <a href="/College_Management_Service/Home.jsp">Home</a>
  <a href="/College_Management_Service/Login.jsp">Logout</a>
</div>

<div class="main">
  <p>The college management services provides a platform for both the faculty or admin and students to get in touch with the offered services. A student can register on the platform and then search or view courses offered in different branches and semesters. An admin can view courses, and delete registered students from the portal</p>
</div>  <div style="width:100%;height:310px;overflow:hidden;">
<iframe src="/College_Management_Service/CourseSearch.jsp" height="310px" width="99%"></iframe>
</div>


</body>
</html> 
