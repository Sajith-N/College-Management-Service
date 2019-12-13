package com.wipro.service;

import java.sql.Connection;
import com.mysql.cj.jdbc.*;
import java.sql.DriverManager;

public class DBUtil {

	public Connection getDBConnection() {
		Connection conn = null;
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sajith", "root", "mysql");
			System.out.println("connection :" + conn);
			return conn;

		} catch (Exception e) {
			System.out.println(e);
		}
		return conn;
	}
}
