/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataBase;

import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author JOSE
 */
public class RutinasDAO extends ConexionMySQL<Rutinas> {

    public RutinasDAO() {
        tabla = Rutinas.class.getSimpleName();
        tipo = Rutinas.class;
    }

    @Override
    public Rutinas obtenerRegistro(Rutinas dato) throws SQLException {
        campos = "idrutina,descripcion";
        camposCondicion = "idrutina";
        condicion = "where idrutina=?";
        dato = super.obtenerRegistro(dato); 
        cerrarConexion();
        return dato;
    }

    @Override
    public void obtenerLista(List<Rutinas> lista) throws SQLException {
        campos = "idrutina,descripcion";
        camposCondicion = "";
        condicion = "";
        super.obtenerLista(lista);
    }

}
