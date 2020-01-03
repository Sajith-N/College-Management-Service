package com.wipro.service;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {
	static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";

	public static Connection getDBConnection() {
		Connection conn = null;

		try {
			
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sajith", "root", "mysql");
			System.out.println("connection : " + conn);
			return conn;

		} catch (Exception e) {
			System.out.println(e);
		}
		return conn;
	}
}
