package com.example;

import java.io.IOException;
import javafx.fxml.FXML;
import javafx.event.ActionEvent;
import javafx.scene.layout.GridPane;
import javafx.scene.control.Button;

public class PrimaryController {
		//private Question[][] questions;

		@FXML
		private void switchToSecondary(ActionEvent event) throws IOException {
				Button b = (Button) event.getSource();
				int x = GridPane.getRowIndex(b);
				int y = GridPane.getColumnIndex(b);
				App.setRoot("secondary");
		}

		public void initalize() {
				//questions = new Question[5][5];
		}
}
