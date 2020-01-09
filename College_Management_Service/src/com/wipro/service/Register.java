package com.wipro.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		System.out.println("userID : "+userID+"Gender : "+Gender+"Department :"+Department+"Semester : "+Semester+"Petname : "+petname+"Age : "+Age);
		PrintWriter out=response.getWriter();
		out.println("User is registered in the form");
		out.println("userID : "+userID+"Gender : "+Gender+"Department :"+Department+"Semester : "+Semester);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
