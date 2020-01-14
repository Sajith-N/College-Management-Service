<%@page import="com.wipro.dbutil.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.wipro.service.*,java.sql.*"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
.button {
  font: bold 11px Arial;
  text-decoration: none;
  background-color: #EEEEEE;
  color: #333333;
  padding: 2px 6px 2px 6px;
  border-top: 1px solid #CCCCCC;
  border-right: 1px solid #333333;
  border-bottom: 1px solid #333333;
  border-left: 1px solid #CCCCCC;
}
</style>
<h2 align="center">Student List</h2>

</head>
<body>
    <%
    		Connection conn = null;

    		try {
    			
    			
    			conn = DBUtil.getDBConnection();
    			System.out.println("connection : " + conn);
        PreparedStatement psmt=conn.prepareStatement("select name,Department,Semester from userdetails;");
        ResultSet rs=psmt.executeQuery();
        System.out.println("Result : " +rs);
       %>
   <table id="table" align=center style="text-align:center" border="1" cellpadding="5">
      <thead>
          <tr>
             <th>Name</th>
             <th>Department</th>
             <th>Semester</th>
             <th>Action</th>
          </tr>
      </thead>
      <tbody>
      <%while(rs.next())
        {
            %>
            <tr bgcolor="#DEB887">
                <td><%=rs.getString(1) %></td>
                <td><%=rs.getString(2) %></td>
                <td><%=rs.getString(3) %></td>
                <td class="text-center"><a href='Delete.jsp?d=<%=rs.getString(1)%>' class="button">Delete</td>
            
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
    <script>

 

</script>
    </body>
</html>