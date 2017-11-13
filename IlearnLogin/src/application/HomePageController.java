package application;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;

public class HomePageController {
	@FXML Button User, Course1, Course2, Course3;
	@FXML Label NeedHelp;
	String we, one, two, three;

	public void setText(String use){
		this.User.setText("Welcome " + use);
		//we = User.getText();
		setTextOne(one);
	}
	public void setTextOne(String pass){
		we = pass;
		/*
		try{
		Connection con = DBConnect.getConnection();
				PreparedStatement statement = con.prepareStatement("SELECT CourseOne FROM users WHERE password = '" + we +"'");
				ResultSet reslut = statement.executeQuery();
				while(reslut.next())
				(reslut.getString("CourseOne"));
				con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		*/
	}

	public void signout(ActionEvent event) throws Exception{
		Stage primaryStage = new Stage();
		BorderPane root = (BorderPane)FXMLLoader.load(getClass().getResource("LoginMain.fxml"));
		Scene scene = new Scene(root,600,450);
		scene.getStylesheets().add(getClass().getResource("application.css").toExternalForm());
		primaryStage.setScene(scene);
		primaryStage.show();
		((Node)event.getSource()).getScene().getWindow().hide();
	}

	public void user(){

	}

	public void help2(){
		NeedHelp.setText("Call 777-777-7777 for customer support.");
	}


/*
	public void twoStuff(){
		try{
		Connection connn = DBConnect.getConnection();
				PreparedStatement statement = connn.prepareStatement("SELECT CourseTwo FROM users WHERE password = '" + we +"'");
				ResultSet reslut = statement.executeQuery();
				while(reslut.next())
				Course2.setText(reslut.getString("CourseTwo"));
				connn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	public void threeStuff(){
		try{
		Connection connn = DBConnect.getConnection();
				PreparedStatement statement = connn.prepareStatement("SELECT CourseThree FROM users WHERE password = '" + we +"'");
				ResultSet reslut = statement.executeQuery();
				while(reslut.next())
				Course3.setText(reslut.getString("CourseThree"));
				connn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	*/

}
