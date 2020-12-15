package frontend.controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.input.MouseEvent;

public class ControllerCancion {

    @FXML private TextField nombreCancion;
    @FXML private TextField nombreArtista;
    @FXML private Button agregarCancion;

    ControladorMain unControlador = new ControladorMain();

    public void agregarCancion(ActionEvent actionEvent) {

        String nombre = nombreCancion.getText();
        String nombreArtist = nombreArtista.getText();

        unControlador.crearCancion(nombre,nombreArtist);
    }

    public void regresarHome(MouseEvent mouseEvent) {
        new ToScene().toScene("home.fxml", mouseEvent);
    }
}
