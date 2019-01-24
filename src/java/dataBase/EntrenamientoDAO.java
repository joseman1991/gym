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
public class EntrenamientoDAO extends ConexionMySQL<Entrenamiento> {

    public EntrenamientoDAO() {
        super();
        tabla = Entrenamiento.class.getSimpleName();
        tipo = Entrenamiento.class;
    }

    @Override
    public int insertarRegistro(Entrenamiento registro) throws SQLException {
        campos = "idrutina,idcliente,precio,idperiodo,saldo";
        int result = super.insertarRegistro(registro);
        cerrarConexion();
        return result;
    }

    @Override
    public void obtenerLista(List<Entrenamiento> lista, Entrenamiento dato) throws SQLException {
        campos = "identrenamiento,idrutina,identrenador,idcliente,precio,idperiodo,idestado,saldo,abono,fechainicio,fechafin";
        camposCondicion = "idestado";
        condicion = "where idestado=? or idestado>=4 order by fechainicio desc";
        super.obtenerLista(lista, dato);
        cerrarConexion();
    }
    
    public void obtenerListaEstudiante(List<Entrenamiento> lista, Entrenamiento dato) throws SQLException {
        campos = "identrenamiento,idrutina,identrenador,idcliente,precio,idperiodo,idestado,saldo,abono,fechainicio,fechafin";
        camposCondicion = "identrenador,fechafin";
        condicion = "where identrenador=? and fechafin > ? order by fechainicio desc";
        super.obtenerLista(lista, dato);
        cerrarConexion();
    }
    
    public void obtenerListaXEstudiante(List<Entrenamiento> lista, Entrenamiento dato) throws SQLException {
        campos = "identrenamiento,idrutina,identrenador,idcliente,precio,idperiodo,idestado,saldo,abono,fechainicio,fechafin";
        camposCondicion = "idcliente";
        condicion = "where idcliente=?";
        super.obtenerLista(lista, dato);
        cerrarConexion();
    }

    @Override
    public Entrenamiento obtenerRegistro(Entrenamiento dato) throws SQLException {
        campos = "identrenamiento,idrutina,identrenador,idcliente,precio,idperiodo,idestado,saldo,abono,fechainicio,fechafin";
        camposCondicion = "identrenamiento";
        condicion = "where identrenamiento=?";
        dato = super.obtenerRegistro(dato);
        cerrarConexion();
        return dato;
    }
    
    
    public int activarEntrenamiento(Entrenamiento registro) throws SQLException{
        campos="idestado,saldo,abono,fechainicio,fechafin";
        camposCondicion="identrenamiento";
        condicion="where identrenamiento=?";        
        int result = super.actualizarRegistro(registro);
        cerrarConexion();
        return result;
    }
    public int abonarEntrenamiento(Entrenamiento registro) throws SQLException{
        campos="idestado,saldo,abono";
        camposCondicion="identrenamiento";
        condicion="where identrenamiento=?";        
        int result = super.actualizarRegistro(registro);
        cerrarConexion();
        return result;
    }
    public int setEntrenador(Entrenamiento registro) throws SQLException{
        campos="identrenador";
        camposCondicion="identrenamiento";
        condicion="where identrenamiento=?";        
        int result = super.actualizarRegistro(registro);
        cerrarConexion();
        return result;
    }

}
