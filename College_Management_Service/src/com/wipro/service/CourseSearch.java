package com.wipro.service;

import java.io.IOException;
import java.sql.Connection;

import com.wipro.service.DBUtil;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CourseSearch
 */
@WebServlet(urlPatterns= {"/CourseSearch"})
public class CourseSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       Connection conn=null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CourseSearch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html");
	conn=new DBUtil().getDBConnection();
String department=request.getParameter("department");
System.out.println("Inside Course search page");
String semester=request.getParameter("semester");
System.out.println("Request :"+department+"   Semester : "+semester);
System.out.println("Connection :  "+conn);
RequestDispatcher rd=request.getRequestDispatcher("/CourseResult.jsp");
rd.include(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
