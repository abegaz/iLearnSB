package application;

import java.io.IOException;
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
	@FXML Button User;
	@FXML Label NeedHelp;
	String we;

	public void setText(String use){
		this.User.setText("Welcome " + use);
		we = User.getText();
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


}
