package frontend.controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;

public class ControllerRegGeneroMus {

    @FXML private TextField generoMusical;
    @FXML private Button registroGeneroMus;

    ControladorMain unControlador = new ControladorMain();

    public void registroGeneroMus(ActionEvent actionEvent) {
        String genero = generoMusical.getText();
        unControlador.agregarGeneros(genero);

        new ToScene().toScene("home.fxml",actionEvent);
    }
}
