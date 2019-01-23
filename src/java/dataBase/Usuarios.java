/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataBase;

import java.sql.SQLException;

/**
 *
 * @author
 */
public class Usuarios {

    private int idusuario;
    private int idperfil;
    private int idestado;
    private String clave;
    private String aclave;
    private String nombre1;
    private String nombre2;
    private String apellido1;
    private String apellido2;
    private String email;
    private String direccion;
    private String telefono;
    private Perfiles perfil;
    private Estados estados;
    
    private String fullname;

    public Usuarios() {

    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getNombre1() {
        return nombre1;
    }

    public void setNombre1(String nombre1) {
        this.nombre1 = nombre1;
    }

    public String getApellido2() {
        return apellido2;
    }

    public void setApellido2(String apellido2) {
        this.apellido2 = apellido2;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public int getIdperfil() {
        return idperfil;
    }

    public void setIdperfil(int idperfil) throws SQLException {
        this.perfil = new Perfiles();
        this.perfil.setIdperfil(idperfil);
        perfil = new PerfilesDAO().obtenerRegistro(perfil);
        this.idperfil = idperfil;
    }

    public Perfiles getPerfil() {
        return perfil;
    }

    public void setPerfil(Perfiles perfil) {
        this.perfil = perfil;
    }

    public String getFullname() {
        fullname=String.format("%s %s %s %s", nombre1,nombre2, apellido1,apellido2);
        return fullname;
    }

    public int getIdestado() {
        return idestado;
    }

     public void setIdestado(int idestado) throws SQLException {
        this.estados= new Estados();
        this.estados.setIdestado(idestado);
        this.idestado = idestado;
        estados= new EstadoDAO().obtenerRegistro(estados);                
    }

    public String getNombre2() {
        return nombre2;
    }

    public void setNombre2(String nombre2) {
        this.nombre2 = nombre2;
    }

    public String getApellido1() {
        return apellido1;
    }

    public void setApellido1(String apellido1) {
        this.apellido1 = apellido1;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public Estados getEstados() {
        return estados;
    }

    public void setEstados(Estados estados) {
        this.estados = estados;
    }

    public String getAclave() {
        return aclave;
    }

    public void setAclave(String aclave) {
        this.aclave = aclave;
    }
    
    

}
