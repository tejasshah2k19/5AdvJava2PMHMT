package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.util.DbConnection;

public class ProductDao {

	public void addProduct(String productName, String category, Integer price, Integer qty) {

		try {
			Connection c = DbConnection.getConnection();

			PreparedStatement pstmt = c
					.prepareStatement("insert into products (productName,price,category,qty) values (?,?,?,?)");
			pstmt.setString(1, productName);
			pstmt.setInt(2, price);
			pstmt.setString(3, category);
			pstmt.setInt(4, qty);

			pstmt.executeUpdate(); // run
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ResultSet getAllProducts() {

		try {

			Connection c = DbConnection.getConnection();

			PreparedStatement pstmt = c.prepareStatement("select * from products");
			ResultSet rs = pstmt.executeQuery();
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
