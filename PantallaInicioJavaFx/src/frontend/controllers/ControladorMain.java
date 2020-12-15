package frontend.controllers;

import cr.ac.ucenfotec.ProyectoFinal.bl.entidades.UsuarioFinal;
import cr.ac.ucenfotec.ProyectoFinal.gestor.Gestor;

import java.time.LocalDate;
import java.util.List;

public class ControladorMain {

    private Gestor gestor = new Gestor();


    public int iniciarSesion(String nombre, String contrasenna){
        int resultado = 0;

        List<UsuarioFinal> unUsuarioFinal = null;
        unUsuarioFinal = gestor.findAllUsuarioFinal();
        for(UsuarioFinal unoUsuarioFinal : unUsuarioFinal){
            if(unoUsuarioFinal.getNombreUsuarioFinal().equals(nombre) && unoUsuarioFinal.getContrasenna().equals(contrasenna)){
                break;
            }else{
                resultado++;
            }
        }
        return resultado;
    }

    public void crearUsuario(String nombre, String apellido1, String apellido2, String identificacion, String paisProcedencia, Integer edad, String correoElectronico, String foto, String nombreUsuarioFinal, String contrasenna ) {
        gestor.crearUsuario(nombre,apellido1,apellido2,identificacion,paisProcedencia,edad,correoElectronico,foto,nombreUsuarioFinal,contrasenna);
    }

    public void agregarArtistas(String nombre, String apellido1, String apellido2, String alias, String paisNacimiento, LocalDate fechaNacimiento, LocalDate fechaDefuncion, Integer edad, String nombreGenero, String referencia) {
        gestor.agregarArtista(nombre,apellido1,apellido2,alias,paisNacimiento,String.valueOf(fechaNacimiento),String.valueOf(fechaDefuncion),edad,nombreGenero,referencia);
    }

    public void agregarCompositores(String nombre, String apellido1, String apellido2,String paisNacimiento,Integer edad, String nombreGenero) {
        gestor.agregarCompositor(nombre,apellido1,apellido2,paisNacimiento,edad,nombreGenero);
    }

    public void agregarGeneros(String nombreGenero) {
        gestor.agregarGenero(nombreGenero);
    }

    public void crearCancion(String nombreCancion, String nombreArtista) {
        gestor.crearCancion(nombreCancion,nombreArtista);
    }



}
