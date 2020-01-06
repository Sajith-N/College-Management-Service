<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.wipro.service.*,java.sql.*"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<h2>Course Lists</h2>

</head>
<body>
    <%
    		Connection conn = null;

    		try {
    			
    			Class.forName("com.mysql.cj.jdbc.Driver");
    			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sajith", "root", "mysql");
    			System.out.println("connection : " + conn);
        PreparedStatement psmt=conn.prepareStatement("select CourseId,CourseName from master where Semester=? and Department=?;");
        psmt.setString(1,"Semester - 01");
        psmt.setString(2,"Computer Science");
        ResultSet rs=psmt.executeQuery();
        System.out.println("Result : " +rs);
       %>
   <table align=center style="text-align:center">
      <thead>
          <tr>
             <th>CourseId</th>
             <th>CourseName</th>
          </tr>
      </thead>
      <tbody>
      <%while(rs.next())
        {
            %>
            <tr bgcolor="#DEB887">
                <td><%=rs.getString(1) %></td>
                <td><%=rs.getString(2) %></td>
            </tr>
            
            <%
            }    
    }
    catch(Exception e){
        out.print(e.getMessage());
    }
  
    %>
    </tbody>
    </table>
    </body>
</html>