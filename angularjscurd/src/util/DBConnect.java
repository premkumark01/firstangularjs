package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;



public class DBConnect {

	private static Connection con;
	
	static {
		try {
		Class.forName("com.mysql.jdbc.Driver");
	} catch(ClassNotFoundException ex){
		Logger.getLogger(DBConnect.class.getName()).log(Level.SEVERE,null,ex);
	}
	}
	
	public static Connection getConnection() throws SQLException {
		try
		{
		con= DriverManager.getConnection("jdbc:mysql://localhost:3306/dummy","root","");
		System.out.println("Data base is Connected !");
		return con;
		}
		catch(Exception e)
		{
		System.out.print("Do not connect to DB - Error:"+e);
		}
		return null;
	}
}
