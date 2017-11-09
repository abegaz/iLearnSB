package application;

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
		}
}
