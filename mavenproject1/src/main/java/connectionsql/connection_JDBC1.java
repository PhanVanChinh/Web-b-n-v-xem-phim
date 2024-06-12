package connectionsql;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;


public class connection_JDBC1 {
	public static Connection getConnection() {
		Connection c=null;
		try {
			//dang ki driver voi drivermanager
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			//cac thong sovie
			String url = "jdbc:mySQL://localhost:3306/movie";
			String username = "root";
			String password = "88888888";
			//tao ket no
			c = DriverManager.getConnection(url, username, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return c;
	}
	public static void closeconnection(Connection c) {
		try {
			if(c!=null) {
				c.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void printInfor(Connection c) {
		try {
			if(c!=null) {
				DatabaseMetaData mtdt = c.getMetaData();
				System.out.println(mtdt.getDatabaseProductName());
				System.out.println(mtdt.getDatabaseProductVersion());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}