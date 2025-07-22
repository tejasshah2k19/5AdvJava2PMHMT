package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DbConnection;
//DBEditProductServlet
@WebServlet("/DBEditProductServlet")
public class DBEditProductServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Integer productId = Integer.parseInt(request.getParameter("productId"));

		try {
			Connection con = DbConnection.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement("select * from products where productId = ? ");
			pstmt.setInt(1, productId);
			
			ResultSet rs = pstmt.executeQuery(); 
			
			rs.next(); //first record 
			
			String productName = rs.getString("productName");
			String category = rs.getString("category"); 
			Integer price  = rs.getInt("price");
			Integer qty = rs.getInt("qty"); 
			
			request.setAttribute("productName", productName);
			request.setAttribute("category", category);
			request.setAttribute("price", price);
			request.setAttribute("qty", qty);
			request.setAttribute("productId", productId);
	
			
			
			RequestDispatcher rd = request.getRequestDispatcher("DbProductUpdate.jsp");
			rd.forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
