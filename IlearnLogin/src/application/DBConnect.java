package application;

import java.sql.*;

public class DBConnect {



		private static final String USERNAME = "root";
		private static final String PASSWORD = "";
		private static final String CONN_STRING = "jdbc:mysql://localhost/ilearn";

		public static void main(String[] args){

			getStuff();


		}

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
		public static void getStuff(){
			try{
			Connection connn = getConnection();
					PreparedStatement statement = connn.prepareStatement("SELECT firstname FROM users WHERE id = '4'");
					ResultSet reslut = statement.executeQuery();
					while(reslut.next())
					System.out.println(reslut.getString("firstname"));
					connn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
			try{
				Connection con = getConnection();
						PreparedStatement statement = con.prepareStatement("SELECT CourseOne FROM users WHERE firstname = 'yen'");
						ResultSet reslut = statement.executeQuery();
						while(reslut.next())
						System.out.println(reslut.getString("CourseOne"));
						con.close();
				}catch(Exception e){
					e.printStackTrace();
				}
		}
}


