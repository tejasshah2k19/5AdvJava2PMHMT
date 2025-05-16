package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdditionServlet")
public class AdditionServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String n1Str = request.getParameter("n1");
		String n2Str = request.getParameter("n2");
		
		int n1 = Integer.parseInt(n1Str);
		int n2 = Integer.parseInt(n2Str);
		
		int ans = n1 + n2; 
		
		//send ans -> OutputResult 
		//navigate to OutputResult.jsp
		
		RequestDispatcher rd  = request.getRequestDispatcher("OutputResult.jsp");
		rd.forward(request, response);
		
	}
}
