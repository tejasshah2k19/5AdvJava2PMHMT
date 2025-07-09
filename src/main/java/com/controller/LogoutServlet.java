package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet{

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Cookie c = new Cookie("firstName","");
		c.setMaxAge(0);
		response.addCookie(c);

		
		//session get 
		HttpSession session= request.getSession(); 
		
		//session delete / remove / destroy 
		session.invalidate();
		
		response.sendRedirect("AddCookie.jsp");
		
	}
}
