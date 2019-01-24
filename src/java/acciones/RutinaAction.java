/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import dataBase.PeriodoDAO;
import dataBase.Periodos;
import dataBase.Rutinas;
import dataBase.RutinasDAO;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author JOSE
 */
public class RutinaAction extends ActionSupport implements ModelDriven<Rutinas> {

    private Rutinas rutina;
    private final RutinasDAO rdao;
    private final PeriodoDAO pdao;
    
    private String mensaje;
    private final List<Periodos> listaPeriodos;

    public RutinaAction() {
        rutina = new Rutinas();
        rdao = new RutinasDAO();
        pdao = new PeriodoDAO();
        listaPeriodos= new ArrayList<>();
    }

    public String obtenerRutina() {
        try {
            rutina = rdao.obtenerRegistro(rutina);
            pdao.obtenerLista(listaPeriodos);
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        }
    }

    @Override
    public Rutinas getModel() {
        return rutina;
    }

    public Rutinas getRutina() {
        return rutina;
    }

    public void setRutina(Rutinas rutina) {
        this.rutina = rutina;
    }   

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public List<Periodos> getListaPeriodos() {
        return listaPeriodos;
    }

    
    
}
