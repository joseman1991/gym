/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import dataBase.Entrenamiento;
import dataBase.EntrenamientoDAO;
import dataBase.UsuarioDAO;
import dataBase.Usuarios;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 *
 * @author JOSE
 */
public class EntrenamientoAction extends ActionSupport implements ModelDriven<Entrenamiento> {

    private Entrenamiento entrenamiento;
    private final EntrenamientoDAO edao;
    private final UsuarioDAO udao;
    private String mensaje;
    private String style;
    private String estado;
    private final List<Entrenamiento> listaEntrenamientos;
    private final List<Usuarios> listaUsuarios;

    public EntrenamientoAction() {
        listaEntrenamientos = new ArrayList<>();
        listaUsuarios = new ArrayList<>();
        edao = new EntrenamientoDAO();
        udao = new UsuarioDAO();
        entrenamiento = new Entrenamiento();
    }

    public String insertarEntrenamiento() {
        try {
            entrenamiento.setSaldo(entrenamiento.getPrecio());
            int result = edao.insertarRegistro(entrenamiento);
            if (result > 0) {
                mensaje = "Entrenamiento registrado. Para completar transaccion acercarcate al gym a cancelar, para activar tu entrenamiento";
                estado = "Satisfactorio";
                style = "alert-success";
                
                edao.obtenerListaXEstudiante(listaEntrenamientos, entrenamiento);
            } else {
                estado = "ERROR";
                style = "alert-danger";
                return ERROR;
            }
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            estado = "ERROR";
            style = "alert-danger";
            return ERROR;
        }
    }

    public String prepararActualizacion() {
        try {
            entrenamiento = edao.obtenerRegistro(entrenamiento);
            Usuarios u = new Usuarios();
            u.setIdperfil(3);
            u.setIdusuario(1);
            udao.obtenerListaEntrenadores(listaUsuarios, u);
            return SUCCESS;
        } catch (SQLException e) {
            return ERROR;
        }
    }

    public String activarEntrenamiento() {
        try {

            entrenamiento.setIdestado(5);
            entrenamiento.setSaldo(entrenamiento.getPrecio() - entrenamiento.getAbono());
            if (entrenamiento.getSaldo() == 0) {
                entrenamiento.setIdestado(6);
            }
            entrenamiento.setFechainicio(fechaActual());
            System.out.println(entrenamiento.getIdperiodo());
            entrenamiento.setFechafin(fechaFin(entrenamiento.getIdperiodo()));
            int result = edao.activarEntrenamiento(entrenamiento);
            if (result > 0) {
                edao.obtenerLista(listaEntrenamientos, entrenamiento);
                return SUCCESS;
            } else {
                return ERROR;
            }
        } catch (SQLException e) {
            return ERROR;
        }
    }

    public String abonarEntrenamiento() {
        try {
            System.out.println("abona " + entrenamiento.getSaldo());
            entrenamiento.setIdestado(5);
            entrenamiento.setSaldo(entrenamiento.getSaldo() - entrenamiento.getAbono());
            if (entrenamiento.getSaldo() == 0) {
                entrenamiento.setIdestado(6);
            }
            int result = edao.abonarEntrenamiento(entrenamiento);
            if (result > 0) {
                edao.obtenerLista(listaEntrenamientos, entrenamiento);
                return SUCCESS;
            } else {
                return ERROR;
            }
        } catch (SQLException e) {
            return ERROR;
        }
    }

    public String setEntrenador() {
        try {

            int result = edao.setEntrenador(entrenamiento);
            if (result > 0) {
                edao.obtenerLista(listaEntrenamientos, entrenamiento);
                return SUCCESS;
            } else {
                return ERROR;
            }
        } catch (SQLException e) {
            return ERROR;
        }
    }

    private String fechaFin(int idperiodo) {
        Date fecha = new Date();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(fecha);

        switch (idperiodo) {
            case 1:
                calendar.add(Calendar.DAY_OF_YEAR, 1);
                break;

            case 2:
                calendar.add(Calendar.WEEK_OF_MONTH, 1);
                break;

            case 3:
                calendar.add(Calendar.DAY_OF_YEAR, 30);
                break;
        }
        fecha = calendar.getTime();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        String f = format.format(fecha);
        System.out.println(f);
        return f;
    }

    private String fechaActual() {
        Date fecha = new Date();
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        String f = format.format(fecha);
        System.out.println(f);
        return f;
    }

    public String obtenerEntrenamientos() {
        try {
            edao.obtenerLista(listaEntrenamientos, entrenamiento);
            return SUCCESS;
        } catch (SQLException e) {
            return ERROR;
        }
    }
    
    public String obtenerEntrenamientos2() {
        try {
            entrenamiento.setFechafin(fechaActual());
            edao.obtenerListaXEstudiante(listaEntrenamientos, entrenamiento);
            return SUCCESS;
        } catch (SQLException e) {
            return ERROR;
        }
    }
    
    public String obtenerEstudiantes() {
        try {
            entrenamiento.setFechafin(fechaActual());
            edao.obtenerListaEstudiante(listaEntrenamientos, entrenamiento);
            return SUCCESS;
        } catch (SQLException e) {
            return ERROR;
        }
    }
    
    

    public List<Entrenamiento> getListaEntrenamientos() {
        return listaEntrenamientos;
    }

    @Override
    public Entrenamiento getModel() {
        return entrenamiento;
    }

    public Entrenamiento getEntrenamiento() {
        return entrenamiento;
    }

    public void setEntrenamiento(Entrenamiento entrenamiento) {
        this.entrenamiento = entrenamiento;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public List<Usuarios> getListaUsuarios() {
        return listaUsuarios;
    }

}
