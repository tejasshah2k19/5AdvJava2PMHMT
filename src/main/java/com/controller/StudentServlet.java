package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet{

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String firstName = request.getParameter("firstName");
		String email = request.getParameter("email");
		String hobby [] = request.getParameterValues("hobby");
		
		//next jsp
		request.setAttribute("firstName", firstName);
		request.setAttribute("email", email);
		request.setAttribute("hobby", hobby);
		
		//next jsp redirect 
		RequestDispatcher rd = request.getRequestDispatcher("OutputStudentInfo.jsp");
		rd.forward(request, response);
		
	
	}
}
