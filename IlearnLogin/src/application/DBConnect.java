package application;

import java.sql.*;

public class DBConnect {

	public static void main(String[] args){

		 DBConnect dog = new DBConnect();

	}

	public DBConnect() {

	}
		private static final String USERNAME = "root";
		private static final String PASSWORD = "";
		private static final String CONN_STRING = "jdbc:mysql://localhost/ilearn";

		// connection  method that connects us to the MySQL database
		public static Connection getConnection() throws SQLException{
			//System.out.println("Connected to student database successfully!");
			return DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
		}

		// method that displays our errors in more detail if connection fails
		public static void displayException(SQLException ex){

			System.err.println("Error Message: " + ex.getMessage());
			System.err.println("Error Code: " + ex.getErrorCode());
			System.err.println("SQL Status: " + ex.getSQLState());
	}

}
