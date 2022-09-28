package com.lams.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {
	private static Connection con = null;
	
	// 1 - load driver
	public static Connection getConn() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			// 2- get the connection
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lams","root","root12345");
			 System.out.println("connection established");
			
			
		} catch (Exception e) {
		e.printStackTrace();	
		}
	
		 return con;
	}
	
	
	
	// 3 - creating statement - sql query
	
    // 4 - Execute get Result
	
	//  5 - close
	
}
