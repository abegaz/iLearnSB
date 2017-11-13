package application;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.PreparedStatement;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;

public class LoginController {

		@FXML Label notice;
		@FXML TextField UserName;
		@FXML Label helptxt;
		@FXML PasswordField Password;
		String use, pass, one, two, three;


		public void login(ActionEvent event) throws Exception{
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
					 pass = (Password.getText());
					use = (UserName.getText());

					((Node)event.getSource()).getScene().getWindow().hide();

					FXMLLoader Loader = new FXMLLoader();
					Loader.setLocation(getClass().getResource("HomePage.fxml"));
					try {
						Loader.load();
					} catch (IOException ex){
						Logger.getLogger(LoginController.class.getName()).log(Level.SEVERE, null, ex);
					}
					HomePageController display = Loader.getController();
					display.setText(use);
					display.setTextOne(pass);

					Parent p = Loader.getRoot();
					Stage stage = new Stage();
					stage.setScene(new Scene(p));
					stage.showAndWait();

					/*
					Stage primaryStage = new Stage();
					AnchorPane root = (AnchorPane)FXMLLoader.load(getClass().getResource("HomePage.fxml"));
					Scene scene = new Scene(root,917,700);
					scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
					primaryStage.setScene(scene);
					primaryStage.show();
					*/

					notice.setText("correct");
				}
				else{
					notice.setText("Invalid Username or Password");
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



		public void help(){
			helptxt.setText("Enter a Valid Username and Password, For help call 777-777-7777.");

		}
}
