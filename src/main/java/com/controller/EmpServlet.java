package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EmpServlet")
public class EmpServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// read
		String name = request.getParameter("name");
		String city = request.getParameter("city");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirmPassword");

		// validation
		boolean isError = false;// no error

		if (name == null || name.isBlank()) {
			isError = true;
			request.setAttribute("nameError", "Please Enter Name");
		} else {
			// input ? atoz AtoZ
			String alphaRegex = "[a-zA-Z]+";// 1-N

			if(name.matches(alphaRegex) == false) {
				isError = true ; 
				request.setAttribute("nameError", "Please Enter Valid Name");
			}
			
			
//			String alphaRegex2 = "[a-zA-Z]{3,15}";//1-N
		}

		if (city == null || city.isBlank()) {
			isError = true;
			request.setAttribute("cityError", "Please Enter City");
		}

		if (email == null || email.isBlank()) {
			isError = true;
			request.setAttribute("emailError", "Please Enter Email");
		}else {
			String emailRegex = "[a-zA-Z0-9]+@[a-zA-Z]+\\.[a-zA-Z]{2,3}";//XXX@XXX.XXX
			
			if(email.matches(emailRegex)==false) {
				
				isError = true;
				request.setAttribute("emailError", "Please Enter Valid Email");
			}
		
		}

		if (password == null || password.isBlank()) {
			isError = true;
			request.setAttribute("passwordError", "Please Enter PAssword");
		} else if (confirmPassword == null || confirmPassword.isBlank()) {
			isError = true;
			request.setAttribute("confirmPasswordError", "Please Enter Confirm Password");
		} else if (password.length() < 8) {

			isError = true;
			request.setAttribute("passwordError", "Please Enter Password >= 8 characters");
		} else if (password.equals(confirmPassword) == false) {
			isError = true;
			request.setAttribute("passwordError", "Password and Confirm Password must be same");

		}

		if (isError == false) {
			// success
			request.setAttribute("name", name);
			request.setAttribute("city", city);

			RequestDispatcher rd = request.getRequestDispatcher("EmpInfo.jsp");
			rd.forward(request, response);

		} else {
			// fail
			RequestDispatcher rd = request.getRequestDispatcher("InputEmp.jsp");
			rd.forward(request, response);

		}
	}
}
