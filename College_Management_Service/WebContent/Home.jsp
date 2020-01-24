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
.main {
  margin-left: 140px; /* Same width as the sidebar + left position in px */
  font-size: 28px; /* Increased text to enable scrolling */
  padding: 0px 10px;
}
</style>
</head>
<body>
<script>
function CourseSearchFrame(id){
	console.log(id);
	   document.getElementById("Home").src = id; //use embed url from you tube
	    document.getElementById("Home").style.display = '';
}
</script>
<div class="sidenav">
 <button id="/College_Management_Service/Home.jsp" onclick="CourseSearchFrame(id)" >Home</button>
 <button id="/College_Management_Service/CourseSearch.jsp" onclick="CourseSearchFrame(id)">Course Search Page</button>
 <button id="/College_Management_Service/Login.jsp" onclick="CourseSearchFrame(id)">Logout</a>
</div>

<div class="main">
<p id="Home"></p>
</div>  
</body>
</html> 
