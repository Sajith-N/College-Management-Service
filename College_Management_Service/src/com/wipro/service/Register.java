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
		String userID=request.getParameter("userID");
		String Name=request.getParameter("Name");
		String Age=request.getParameter("Age");
		String Password=request.getParameter("Password");
		String Gender=request.getParameter("Gender");
		String Department=request.getParameter("Department");
		String Semester=request.getParameter("Semester");
		System.out.println("userID : "+userID+"Gender : "+Gender+"Department :"+Department+"Semester : "+Semester);
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
