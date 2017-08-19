package demo01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;


public class JDBCTest {

	public static void main(String[] args) throws Exception {

		Class.forName("com.mysql.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/bigdata14";
		String user = "root";
		String password = "root";
		Connection connection = DriverManager.getConnection(url, user, password);
		
		Statement stm = connection.createStatement();
		
		stm.close();
		connection.close();
	}
	

}
