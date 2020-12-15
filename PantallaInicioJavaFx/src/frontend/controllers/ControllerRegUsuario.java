package frontend.controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;

public class ControllerRegUsuario {

    @FXML private TextField nombreDelUsuario;
    @FXML private TextField apellido1DelUsuario;
    @FXML private TextField apellido2DelUsuario;
    @FXML private TextField idenfiticacionDelUsuario;
    @FXML private TextField paisProcedencia;
    @FXML private TextField edad;
    @FXML private TextField correoElectronico;
    @FXML private TextField fotografia;
    @FXML private TextField nombreIngresoUsuario;
    @FXML private TextField contrasennaIngresoUsuario;
    @FXML private Button RegistrarUsuario;

    ControladorMain unControlador = new ControladorMain();

    @FXML
    private void registrarUsuario(ActionEvent event) {

        String nombre = nombreDelUsuario.getText();
        String apellido1= apellido1DelUsuario.getText();
        String apellido2 = apellido2DelUsuario.getText();
        String identificacion = idenfiticacionDelUsuario.getText();
        String paisDeProcedencia = paisProcedencia.getText();
        String edadUsu = edad.getText();
        int edadUser= Integer.parseInt(edadUsu);
        String correo = correoElectronico.getText();
        String foto = fotografia.getText();
        String nombreUsuarioFinal = nombreIngresoUsuario.getText();
        String clave = contrasennaIngresoUsuario.getText();

        unControlador.crearUsuario(nombre,apellido1,apellido2,identificacion,paisDeProcedencia,edadUser,correo,foto,nombreUsuarioFinal,clave);

        new ToScene().toScene("pantallainicial.fxml",event);

    }

}
