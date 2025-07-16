package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DbConnection;

@WebServlet("/DBAddUserServlet")
public class DBAddUserServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		try {

			// establish connection
			Connection dbConnection = DbConnection.getConnection();
			// query
			PreparedStatement pstmt = dbConnection
					.prepareStatement("insert into users (firstName,lastName,email,password) values (?,?,?,?)");

			pstmt.setString(1, firstName);
			pstmt.setString(2, lastName);
			pstmt.setString(3, email);
			pstmt.setString(4, password);

			// run
			pstmt.executeUpdate();

			System.out.println("record inserted........");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
