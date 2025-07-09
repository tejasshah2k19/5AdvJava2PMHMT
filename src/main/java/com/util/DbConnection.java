package com.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {

	public static void main(String[] args) {
		System.out.println("hi..........");

		// DbConnection open

		//db -> driver file 
		
		try {

			String driverName = "com.mysql.cj.jdbc.Driver";
			String dbUrl = "jdbc:mysql://localhost:3306/hmtavengers";
			String userName = "root";
			String password = "root";

//			step1:  load driver into memory 
			Class.forName(driverName);

//			step2:
			Connection c = DriverManager.getConnection(dbUrl, userName, password);

			if (c != null) {
				System.out.println("DbConnected....");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
