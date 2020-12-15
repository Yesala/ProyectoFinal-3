package frontend.controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.DatePicker;
import javafx.scene.control.TextField;

import java.time.LocalDate;

public class ControllerRegArtista {

    @FXML private TextField nombreArtista;
    @FXML private TextField apellido1Artist;
    @FXML private TextField apellido2Artist;
    @FXML private TextField alias;
    @FXML private TextField paisNacimiento;
    @FXML private DatePicker fechaNacimiento;
    @FXML private DatePicker fechaDefuncion;
    @FXML private TextField edad;
    @FXML private TextField genero;
    @FXML private TextField referencias;
    @FXML private Button registroArtista;

    ControladorMain unControlador = new ControladorMain();

    public void registroArtista(ActionEvent actionEvent) {

        String nombre = nombreArtista.getText();
        String apellido1 = apellido1Artist.getText();
        String apellido2 = apellido2Artist.getText();
        String nombreArtistico = alias.getText();
        String paisDeNacimiento = paisNacimiento.getText();
        LocalDate fechaDeNac = fechaNacimiento.getValue();
        LocalDate fechaDefun = fechaDefuncion.getValue();
        String edadArtist = edad.getText();
        int edadArtista= Integer.parseInt(edadArtist);
        String generoMus = genero.getText();
        String referenciasArt = referencias.getText();

        unControlador.agregarArtistas(nombre,apellido1,apellido2,nombreArtistico,paisDeNacimiento,fechaDeNac,fechaDefun,edadArtista,generoMus,referenciasArt);

        new ToScene().toScene("home.fxml",actionEvent);

    }
}
