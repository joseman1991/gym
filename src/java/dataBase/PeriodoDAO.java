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
 * @author 
 */
public class PeriodoDAO extends ConexionMySQL<Periodos> {

    public PeriodoDAO() {
        tabla = Periodos.class.getSimpleName();
        tipo = Periodos.class;
    }

    @Override
    public Periodos obtenerRegistro(Periodos dato) throws SQLException {
        campos = "idperiodo,descripcion,precio";
        camposCondicion = "idperiodo";
        condicion = "where idperiodo=?";
        dato = super.obtenerRegistro(dato); 
        cerrarConexion();
        return dato;
    }

    @Override
    public void obtenerLista(List<Periodos> lista) throws SQLException {
        campos = "idperiodo,descripcion,precio";
        camposCondicion = "";
        condicion = "";
        super.obtenerLista(lista);
    }

}
