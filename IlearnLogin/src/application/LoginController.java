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
			notice.setText(UserName.getText());
			String SQLQuery = "SELECT * FROM users WHERE id = '26'";
			ResultSet rs = null;

			try{
				Connection connn = DBConnect.getConnection();
				PreparedStatement displayprofile = connn.prepareStatement(SQLQuery);{
					rs = displayprofile.executeQuery();

					while (rs.next()){
						notice.setText(rs.getString("firstname"));
					}
				}
			}
				catch(SQLException ex){
					DBConnect.displayException(ex);
					}



		}
}
