package cr.ac.ucenfotec.ProyectoFinal.dao;

import cr.ac.ucenfotec.ProyectoFinal.bl.entidades.CancionesAlbum;
import cr.ac.ucenfotec.ProyectoFinal.bl.entidades.CancionesLista;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CancionesAlbumDAO {

    private final String TEMPLATE_CMD_INSERTAR = "insert into TAlbumCancion(nombreAlbum,nombreCancion) " +
            "values (?,?)";

    private Connection cnx;
    private PreparedStatement cmdInsertar;

    public CancionesAlbumDAO(Connection connection) {
        this.cnx = connection;
        try {
            this.cmdInsertar = cnx.prepareStatement(TEMPLATE_CMD_INSERTAR);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void saveCancionesAlbum(CancionesAlbum nuevo) throws SQLException {
        if (this.cmdInsertar != null) {
            this.cmdInsertar.setString(1, nuevo.getAlbum().getNombreAlbum());
            this.cmdInsertar.setString(2, nuevo.getCancion().getNombreCancion());
            this.cmdInsertar.execute();
        }
    }


}
