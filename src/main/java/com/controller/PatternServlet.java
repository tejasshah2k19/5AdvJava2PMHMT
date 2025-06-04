package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PatternServlet")
public class PatternServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String n = request.getParameter("no");

		// String int -> wrapper -> Integer
		int n1 = Integer.parseInt(n);

		String output = "1<br>2<br>3<br>4<br>5<br>";
		//1
		//2
		//3
		//4
		//5
		
//		for(int i=1;i<=n1;i++) {
//			
//		}
		//send output variable to next jsp 
		request.setAttribute("output", output);
		
		//redirect to next jsp [ OutputPattern.jsp ] 
		RequestDispatcher rd = request.getRequestDispatcher("OutputPattern.jsp");
		rd.forward(request, response);

	}
}
