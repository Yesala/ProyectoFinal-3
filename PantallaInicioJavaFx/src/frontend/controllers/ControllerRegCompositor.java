package frontend.controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;

public class ControllerRegCompositor {

    @FXML private TextField nombreCompositor;
    @FXML private TextField apellido1Compositor;
    @FXML private TextField apellido2Compositor;
    @FXML private TextField paisNacimiento;
    @FXML private TextField edad;
    @FXML private TextField genero;
    @FXML private Button registroCompositor;

    ControladorMain unControlador = new ControladorMain();

    public void registroCompositor(ActionEvent actionEvent) {

        String nombre = nombreCompositor.getText();
        String apellido1 = apellido1Compositor.getText();
        String apellido2 = apellido2Compositor.getText();
        String paisDeNacimiento = paisNacimiento.getText();
        String edadComp = edad.getText();
        int edadCompositor= Integer.parseInt(edadComp);
        String generoMusical = genero.getText();

        unControlador.agregarCompositores(nombre,apellido1,apellido2,paisDeNacimiento,edadCompositor,generoMusical);

        new ToScene().toScene("home.fxml",actionEvent);
    }
}
