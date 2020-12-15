package cr.ac.ucenfotec.ProyectoFinal.dao;

import cr.ac.ucenfotec.ProyectoFinal.bl.entidades.Cancion;
import cr.ac.ucenfotec.ProyectoFinal.bl.entidades.CancionesLista;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CancionesListaDAO {

    private final String TEMPLATE_CMD_INSERTAR = "insert into TListaCancion(nombreLista,nombreCancion) " +
            "values (?,?)";

    private Connection cnx;
    private PreparedStatement cmdInsertar;

    public CancionesListaDAO(Connection connection) {
        this.cnx = connection;
        try {
            this.cmdInsertar = cnx.prepareStatement(TEMPLATE_CMD_INSERTAR);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void saveCancionesLista(CancionesLista nuevo) throws SQLException {
        if (this.cmdInsertar != null) {
            this.cmdInsertar.setString(1, nuevo.getLista().getNombreLista());
            this.cmdInsertar.setString(2, nuevo.getCancion().getNombreCancion());
            this.cmdInsertar.execute();
        }
    }
}
