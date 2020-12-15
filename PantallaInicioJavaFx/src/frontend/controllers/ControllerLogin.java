package frontend.controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

public class ControllerLogin {

    @FXML private TextField usuarionombre;
    @FXML private TextField contrasennausuario;
    @FXML private Label MostrarErrorUsuario;

    ControladorMain unControlador = new ControladorMain();

    public void iniciarSesion(ActionEvent event) {
        String nombreUsuario = usuarionombre.getText();
        String contrasennaUsu = contrasennausuario.getText();

        int resultado = unControlador.iniciarSesion(nombreUsuario,contrasennaUsu);

        if (resultado == 0){
            new ToScene().toScene("home.fxml",event);
        }else{
            MostrarErrorUsuario.setText("Credenciales incorrectas");
        }

    }

    public void registrarse(ActionEvent actionEvent) {
        new ToScene().toScene("registroUsuario.fxml",actionEvent);
    }

}
