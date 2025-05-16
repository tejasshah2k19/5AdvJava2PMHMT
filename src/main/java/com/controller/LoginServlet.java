package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("LoginServlet.........");

		// read email,password
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		System.out.println("email => " + email);
		System.out.println("password => " + password);

		response.setContentType("text/html");//MIME Type 
		
		PrintWriter out = response.getWriter();

		out.println("<b>email => </b>" + email);
		out.println("<br><b>password => </b>" + password);

	}
}
