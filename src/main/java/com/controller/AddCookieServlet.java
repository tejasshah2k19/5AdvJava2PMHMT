package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddCookieServlet")
public class AddCookieServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		//read 
		String firstName = request.getParameter("firstName"); 
		
		//cookie create 
		Cookie c = new Cookie("firstName", firstName);
		
		//set cookie into browser 
		response.addCookie(c);
		
		response.sendRedirect("ViewCookie.jsp");
	}
}
