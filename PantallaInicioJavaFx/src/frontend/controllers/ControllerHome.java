package frontend.controllers;

import javafx.fxml.FXML;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.AnchorPane;

public class ControllerHome {

    public void agregarCancion(MouseEvent mouseEvent) {
        new ToScene().toScene("agregarCancion.fxml", mouseEvent);
    }

    public void agregarArtista(MouseEvent mouseEvent) {
        new ToScene().toScene("registroArtista.fxml", mouseEvent);
    }

    public void agregarCompositor(MouseEvent mouseEvent) {
        new ToScene().toScene("registroCompositor.fxml", mouseEvent);
    }

    public void agregarGenero(MouseEvent mouseEvent) {
        new ToScene().toScene("registroGeneroMus.fxml", mouseEvent);
    }
}
