package com.wipro.dao;
import java.sql.Connection;

import com.wipro.dbutil.*;

public class LoginDAO {
	public String getLoginDao()
	{
		Connection conn=DBUtil.getDBConnection();
		System.out.println("In DAO "+conn);
		return conn.toString();
	}

}
