package kr.co.bit.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {

	public Connection getConnection() {
		
		Connection conn = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url      = "jdbc:mysql://localhost:3306/devproject";
			String user     = "hr";
			String password = "hr";
			
			conn = DriverManager.getConnection(url, user, password);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
}
