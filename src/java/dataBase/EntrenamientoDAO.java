/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataBase;

/**
 *
 * @author JOSE
 */
public class EntrenamientoDAO extends ConexionMySQL<Entrenamiento>{
    
    public EntrenamientoDAO(){
        super();
        tabla = Entrenamiento.class.getSimpleName();
        tipo = Entrenamiento.class;
    }
    
    
    
    
    
}
