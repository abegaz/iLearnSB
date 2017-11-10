package application;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;

import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

public class LoginController {

		@FXML Label notice;
		@FXML TextField UserName;
		@FXML TextField Password;
		public void login(){
			//DBConnect connect = new DBConnect();
			//notice.setText(UserName.getText());

			//String SQLQuery = "SELECT * FROM users LIMIT 0,10";
			//ResultSet rs = null;

			//Connection connection;
			PreparedStatement ps;

			try{
				Connection conn = DBConnect.getConnection();
				ps = conn.prepareStatement("SELECT `firstname`, `password` FROM `users` WHERE `firstname` =? AND `password` =?");
				ps.setString(1, UserName.getText());
				ps.setString(2, Password.getText());
				ResultSet result = ps.executeQuery();
				if(result.next()){
					notice.setText("correct");
				}
				else{
					notice.setText("no");
				}

			} catch(SQLException ex){
				DBConnect.displayException(ex);
			/*
			try{



				Connection connn = DBConnect.getConnection();
				PreparedStatement statement = connn.prepareStatement("SELECT firstname FROM users LIMIT 0,10");
				ResultSet reslut = statement.executeQuery();
				while(reslut.next())
				System.out.println(reslut.getString("firstname"));
				connn.close();
				/*
				Connection connn = DBConnect.getConnection();
				PreparedStatement displayprofile = connn.prepareStatement(SQLQuery);{
					rs = displayprofile.executeQuery();

					while (rs.next()) {
						//if (UserName.getText() == rs.getString("firstname"));
						notice.setText(rs.getString("firstname"));

					}
				}
			}
				catch(SQLException ex){
					DBConnect.displayException(ex);
					}
 */


		}
}
}
