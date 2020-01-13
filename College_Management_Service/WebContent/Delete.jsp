<%@page import="com.wipro.dbutil.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.wipro.service.*,java.sql.*"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<h2 align="center">Student List</h2>
</head>
<body>
    <%
    		Connection conn = null;

    		try {
    			
    			String id=request.getParameter("d");
    			conn = DBUtil.getDBConnection();
    			System.out.println("connection : " + conn);
        PreparedStatement psmt=conn.prepareStatement("Delete from userdetails where name=?;");
        psmt.setString(1, id);
        int rs=psmt.executeUpdate();
       response.sendRedirect("Student.jsp");
       }
    		catch(Exception e){
    			
    		}
       %>

</body>
</html>