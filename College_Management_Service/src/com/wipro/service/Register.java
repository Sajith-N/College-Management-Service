package com.wipro.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wipro.dbutil.DBUtil;

/**
 * Servlet implementation class Register
 */
@WebServlet(urlPatterns = {"/Register"})
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String userID=request.getParameter("userId");
		String Name=request.getParameter("name");
		String Age=request.getParameter("age");
		String Password=request.getParameter("password");
		String Gender=request.getParameter("gender");
		String Department=request.getParameter("department");
		String Semester=request.getParameter("semester");
		String petname=request.getParameter("petname");
	Connection conn = DBUtil.getDBConnection();
	try {
		PreparedStatement psmt=conn.prepareStatement("insert into userdetails values  (?,?,?,?,?,?,?,?);");
		psmt.setString(1,userID);
		psmt.setString(2,Name);
		psmt.setString(3,Age);
		psmt.setString(4,Password);
		psmt.setString(5,petname);
		psmt.setString(6,Gender);
		psmt.setString(7,Department);
		psmt.setString(8,Semester);
int flag=psmt.executeUpdate();
		System.out.println("Data insertion "+flag);
		if(flag>0)
		{
			request.setAttribute("message","User successfully registered. Login to continue");
		RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");
		rd.forward(request, response);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
