/*
 * To change this license header,choose License Headers in Project Properties.
 * To change this template file,choose Tools | Templates
 * and open the template in the editor.
 */
package dataBase;

import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author
 */
public class UsuarioDAO extends ConexionMySQL<Usuarios> {

    public UsuarioDAO() {
        super();
        tabla = Usuarios.class.getSimpleName();
        tipo = Usuarios.class;
    }

    public Usuarios login(Usuarios usuario) throws SQLException {
        campos = "idusuario,email,nombre1,nombre2,apellido1,apellido2,direccion,telefono,idperfil,idestado";
        camposCondicion = "email,clave";
        condicion = "where  email=? and clave=?";
        usuario = super.obtenerRegistro(usuario);
        cerrarConexion();
        return usuario;
    }
    
    public Usuarios obtenerUser(Usuarios usuario) throws SQLException {
        campos = "idusuario,nombre1,nombre2,apellido1,apellido2";
        camposCondicion = "idusuario,clave";
        condicion = "where  idusuario=? and clave=?";
        usuario = super.obtenerRegistro(usuario);
        cerrarConexion();
        return usuario;
    }

    // campos = "idusuario,email,clave,nombre1,nombre2,apellido1,apellido2,direccion,telefono,idperfil,idestado";
    @Override
    public Usuarios obtenerRegistro(Usuarios usuario) throws SQLException {
        campos = "idusuario,email,nombre1,nombre2,apellido1,apellido2,direccion,telefono,idperfil,idestado";
        camposCondicion = "idusuario";
        condicion = "where idusuario=?";
        usuario = super.obtenerRegistro(usuario);
        cerrarConexion();
        return usuario;
    }

    public Usuarios obtenerUsuariosEmail(Usuarios usuario) throws SQLException {
        campos = "idusuario,email,nombre1,nombre2,apellido1,apellido2,direccion,telefono,idperfil,idestado";
        camposCondicion = "email";
        condicion = "where email=?";
        usuario = super.obtenerRegistro(usuario);
        cerrarConexion();
        return usuario;
    }

    @Override
    public int insertarRegistro(Usuarios user) throws SQLException {
        campos = "email,clave,nombre1,nombre2,apellido1,apellido2,direccion,telefono,idperfil";
        int result = super.insertarRegistro(user);
        cerrarConexion();
        return result;
    }

    @Override
    public void obtenerLista(List<Usuarios> lista, Usuarios dato) throws SQLException {
        campos = "idusuario,email,nombre1,nombre2,apellido1,apellido2,direccion,telefono,idperfil,idestado";
        camposCondicion = "idestado";
        if (dato.getIdestado() == 2) {
            condicion = "where idestado>=?";
        } else {
            condicion = "where idestado=?";
        }
        super.obtenerLista(lista, dato);
        cerrarConexion();
    }
    
    public void buscar(List<Usuarios> lista, Usuarios dato) throws SQLException {
        campos = "idusuario,email,nombre1,nombre2,apellido1,apellido2,direccion,telefono,idperfil,idestado";
        camposCondicion = "idestado, email, nombre1,nombre2, apellido1, apellido2,telefono";
        if (dato.getIdestado() == 2) {
            condicion = "where idestado>=? and (email like ? or nombre1 like ? or nombre2 like ? or apellido1 like ? or apellido2 like ? or telefono like ?)";
        } else {
            condicion = "where idestado=? and (email like ? or nombre1 like ? or nombre2 like ? or apellido1 like ? or apellido2 like ? or telefono like ?) ";
        }
        super.obtenerLista(lista, dato);
        cerrarConexion();
    }

    @Override
    public int actualizarRegistro(Usuarios registro) throws SQLException {
        campos = "idusuario,email,nombre1,nombre2,apellido1,apellido2,direccion,telefono,idperfil,idestado";
        camposCondicion = "idusuario";
        condicion = "where idusuario=?";
        System.out.println("modelo " + registro.getFullname());
        int result = super.actualizarRegistro(registro);
        cerrarConexion();
        return result;
    }

    

    public int actualizarClave(Usuarios registro) throws SQLException {
        campos = "clave";
        camposCondicion = "idusuario";
        condicion = "where idusuario=?";        
        int result = super.actualizarRegistro(registro);
        cerrarConexion();
        return result;
    }

}
