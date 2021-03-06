/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataBase;

import java.sql.Date;
import java.sql.SQLException;

/**
 *
 * @author
 */
public class Entrenamiento {

    private int identrenamiento;
    private int idrutina;
    private int identrenador;
    private int idcliente;
    private float precio;
    private int idestado;
    private float saldo;
    private float abono;
    private int idperiodo;
    private Date fechainici;
    private String fechainicio;
    private Date fechafi;
    private String fechafin;
    private Rutinas rutina;
    private Usuarios cliente;
    private Usuarios entrenador;
    private Periodos periodo;
    private Estados estados;

    public int getIdentrenamiento() {
        return identrenamiento;
    }

    public void setIdentrenamiento(int identrenamiento) {
        this.identrenamiento = identrenamiento;
    }

    public int getIdrutina() {
        return idrutina;
    }

    public void setIdrutina(int idrutina) throws SQLException {
        this.idrutina = idrutina;
        rutina = new Rutinas();
        rutina.setIdrutina(idrutina);
        rutina = new RutinasDAO().obtenerRegistro(rutina);
    }

    public int getIdentrenador() {
        return identrenador;
    }

    public void setIdentrenador(int identrenador) throws SQLException {
        this.identrenador = identrenador;
        entrenador = new Usuarios();
        entrenador.setIdusuario(identrenador);
        entrenador = new UsuarioDAO().obtenerRegistro(entrenador);
    }

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(int idcliente) throws SQLException {
        this.idcliente = idcliente;
        cliente = new Usuarios();
        cliente.setIdusuario(idcliente);
        cliente = new UsuarioDAO().obtenerRegistro(cliente);
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public int getIdestado() {
        return idestado;
    }

    public void setIdestado(int idestado) throws SQLException {
        this.estados = new Estados();
        this.estados.setIdestado(idestado);
        estados = new EstadoDAO().obtenerRegistro(estados);
        this.idestado = idestado;
    }

    public float getSaldo() {
        return saldo;
    }

    public void setSaldo(float saldo) {
        this.saldo = saldo;
    }

    public float getAbono() {
        return abono;
    }

    public void setAbono(float abono) {
        this.abono = abono;
    }

    public int getIdperiodo() {
        return idperiodo;
    }

    public void setIdperiodo(int idperiodo) throws SQLException {
        this.idperiodo = idperiodo;
        periodo = new Periodos();
        periodo.setIdperiodo(idperiodo);
        periodo = new PeriodoDAO().obtenerRegistro(periodo);
    }

    public Date getFechainici() {
        return fechainici;
    }

    public Date getFechafi() {
        return fechafi;
    }

    public Rutinas getRutina() {
        return rutina;
    }

    public void setRutina(Rutinas rutina) {
        this.rutina = rutina;
    }

    public Usuarios getCliente() {
        return cliente;
    }

    public void setCliente(Usuarios cliente) {
        this.cliente = cliente;
    }

    public Usuarios getEntrenador() {
        return entrenador;
    }

    public void setEntrenador(Usuarios entrenador) {
        this.entrenador = entrenador;
    }

    public Periodos getPeriodo() {
        return periodo;
    }

    public void setPeriodo(Periodos periodo) {
        this.periodo = periodo;
    }

    public Estados getEstados() {
        return estados;
    }

    public void setEstados(Estados estados) {
        this.estados = estados;
    }

    public String getFechainicio() {
        return fechainicio;
    }

    public void setFechainicio(String fechainicio) {
        this.fechainicio = fechainicio;
        if (fechainicio != null) {
            fechainici = Date.valueOf(fechainicio);
        }
    }

    public String getFechafin() {
        return fechafin;
    }

    public void setFechafin(String fechafin) {
        this.fechafin = fechafin;
        if (fechafin != null) {
            fechafi = Date.valueOf(fechafin);
        }
    }

}
