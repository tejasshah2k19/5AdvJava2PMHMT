package com.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {

	public static Connection getConnection() {

		String driverName = "com.mysql.cj.jdbc.Driver";
		String dbUrl = "jdbc:mysql://localhost:3306/hmtavengers";
		String dbUserName = "root";
		String dbPassword = "root";
		try {

			// step1 : load driver
			Class.forName(driverName);

			// step2 : connection open
			Connection c = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
			return c;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

}
