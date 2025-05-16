package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/VoteServlet")
public class VoteServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String firstName = request.getParameter("firstName");
		String yearStr = request.getParameter("year");
		Integer year = Integer.parseInt(yearStr);

		// String to int -> Integer.parseInt(str);

		System.out.println(firstName);
		System.out.println(year);
		
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		int age  = 2025-year; 
		
		if(age>=18) {
			out.print(firstName+"<font color='green'> Eligible For Vote </font>");//green color 
		}else {
			out.print(firstName+" <span style='color:red'>Not Eligible For Vote</span>");//red color 
		}

	}

}
