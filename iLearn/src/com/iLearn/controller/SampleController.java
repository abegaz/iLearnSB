package com.iLearn.controller;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

public class SampleController {

	@FXML TextField UserName;
	@FXML TextField Password;
	@FXML Label notice, notice2;



	public void login(){
		notice2.setText("Hello!");
	}
}
