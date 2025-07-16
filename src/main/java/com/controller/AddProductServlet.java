package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ProductDao;
import com.util.DbConnection;

@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String productName = request.getParameter("productName");
		String category = request.getParameter("category");
		Integer price = Integer.parseInt(request.getParameter("price"));
		Integer qty = Integer.parseInt(request.getParameter("qty"));

		try {

			Connection c = DbConnection.getConnection();

			PreparedStatement pstmt = c
					.prepareStatement("insert into products (productName,price,category,qty) values (?,?,?,?)");
			pstmt.setString(1, productName);
			pstmt.setInt(2, price);
			pstmt.setString(3, category);
			pstmt.setInt(4, qty);

			pstmt.executeUpdate(); // run
			//
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
