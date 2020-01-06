package com.wipro.dbutil;

import java.sql.Connection;
import java.sql.DriverManager;

import com.mysql.cj.jdbc.Driver;

public class DBUtil {
	public static Connection getDBConnection() {
		Connection conn = null;

		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Driver driver=new com.mysql.cj.jdbc.Driver();
			DriverManager.registerDriver(driver);
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sajith", "root", "mysql");
			System.out.println("connection : " + conn);
			return conn;

		} catch (Exception e) {
			System.out.println(e);
		}
		return conn;
	}
}
