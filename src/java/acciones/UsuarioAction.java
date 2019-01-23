/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acciones;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import dataBase.Perfiles;
import dataBase.PerfilesDAO;
import dataBase.UsuarioDAO;
import dataBase.Usuarios;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author
 */
public class UsuarioAction extends ActionSupport implements ModelDriven<Usuarios> {

    private Usuarios usuario;
    private final UsuarioDAO uDAO;
    private String mensaje;
    private final HttpSession session;
    private final List<Usuarios> listaUsuarios;
    private final List<Perfiles> listaPerfiles;
    private final PerfilesDAO pdao;

    private String estado;
    private String style;

    public UsuarioAction() {
        usuario = new Usuarios();
        session = ServletActionContext.getRequest().getSession();
        listaUsuarios = new ArrayList<>();
        listaPerfiles = new ArrayList<>();
        uDAO = new UsuarioDAO();
        pdao = new PerfilesDAO();
    }

    @Override
    public String execute() {
        try {
            pdao.obtenerLista(listaPerfiles);
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        }
        return SUCCESS;
    }

    public String insertarUsuario() {
        try {
            Usuarios user = (Usuarios) session.getAttribute("usuario");
            int result = uDAO.insertarRegistro(usuario);
            pdao.obtenerLista(listaPerfiles);
            if (result > 0) {
                if (user == null) {
                    mensaje = "Usuario registrado con éxito, tu cuenta será activada por un administrador. Se notificará al correo " + usuario.getEmail();
                } else {
                    mensaje = "Usuario registrado con éxito, puedes activarlo en el panel de administracion";
                }
                style = "alert-success";
                estado = "Satisfactorio";
                return SUCCESS;
            } else {
                mensaje = "Ha ocurrido un error inesperado";
                return ERROR;
            }
        } catch (SQLException e) {
            if (e.getSQLState().equals("23000")) {
                mensaje = "El correo "+ usuario.getEmail()+" ya se encuentra registrado";
            } else {
                mensaje = e.getMessage();
            }
            style = "alert-danger";
            estado = "Error";
            return ERROR;
        } finally {
            uDAO.cerrarConexion();
        }
    }

    public String buscarUsers() {
        try {
            String busca = usuario.getNombre1() + "%";
            usuario.setNombre1(busca);
            usuario.setNombre2(busca);
            usuario.setApellido1(busca);
            usuario.setApellido2(busca);
            usuario.setEmail(busca);
            usuario.setTelefono(busca);
            uDAO.buscar(listaUsuarios, usuario);
            return SUCCESS;
        } catch (SQLException e) {
            style = "alert-warning";
            estado = "Algo salió mál";
            mensaje = e.getMessage();
            return ERROR;
        }
    }

    public String actualizarUser() {
        try {
            Usuarios u = new Usuarios();
            int idestado = usuario.getIdestado();
            if (idestado > 0) {
                usuario = uDAO.obtenerRegistro(usuario);
                usuario.setIdestado(idestado);
            } else {

                u.setIdusuario(usuario.getIdusuario());
                u = uDAO.obtenerRegistro(u);
                usuario.setIdestado(u.getIdestado());
            }
            System.out.println(usuario.getFullname());
            System.out.println(usuario.getIdusuario());
            int resultado = uDAO.actualizarRegistro(usuario);
            if (resultado > 0) {
                if (idestado == 1) {
                    mensaje = "Usuario " + usuario.getFullname() + " activado";
                    usuario.setIdestado(2);
                } else if (idestado >= 2) {
                    mensaje = "Usuario " + usuario.getFullname() + " desactivado";
                    usuario.setIdestado(1);
                } else {
                    mensaje = "Usuario " + usuario.getFullname() + " actualizado";
                }
                style = "alert-success";
                estado = "Satisfactorio";
                if (u.getIdusuario() == u.getIdusuario()) {
                    usuario = uDAO.obtenerRegistro(usuario);
                    session.setAttribute("usuario", usuario);
                    return "userlog";
                } else {
                    uDAO.obtenerLista(listaUsuarios, usuario);

                }

            }

        } catch (SQLException e) {

        }
        return SUCCESS;
    }

    public String actualizarUsuario() {
        try {
            if (usuario.getClave().equals(usuario.getAclave())) {
                style = "alert-danger";
                estado = "ERROR";
                mensaje = "La clave nueva no puede ser igual a la antigua";
                return ERROR;
            }
            Usuarios user = new Usuarios();
            user.setIdusuario(usuario.getIdusuario());
            user.setClave(usuario.getAclave());
            user = uDAO.obtenerUser(user);
            if (user.getNombre1() != null) {
                int result = uDAO.actualizarClave(usuario);
                if (result > 0) {
                    style = "alert-success";
                    estado = "Satisfactorio";
                    mensaje = "Cantraseña cambiada correctamente";
                } else {
                    style = "alert-danger";
                    estado = "ERROR";
                    mensaje = "Ocurrió un error mientras se actualizaba";
                    return ERROR;
                }
                return SUCCESS;
            } else {
                style = "alert-danger";
                estado = "ERROR";
                mensaje = "Cantraseña antigua no coicide";
                return ERROR;
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            uDAO.cerrarConexion();
        }
    }

    public String login() {
        try {
            usuario = uDAO.login(usuario);
            if (usuario.getNombre1() != null) {
                session.setAttribute("usuario", usuario);
                return SUCCESS;
            } else {
                style = "alert-danger";
                estado = "Error";
                mensaje = "Datos de acceso incorrectos";
                return ERROR;
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            uDAO.cerrarConexion();
        }
    }

    public String obtenerUsuarios() {
        try {
            Usuarios user = (Usuarios) session.getAttribute("usuario");
            if (user != null) {
                uDAO.obtenerLista(listaUsuarios, usuario);
                return SUCCESS;
            } else {
                style = "alert-danger";
                estado = "Lo sentimos";
                mensaje = "No tienes permiso para ver esta página";
                return ERROR;
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            uDAO.cerrarConexion();
        }
    }

    public String obtenerUsuario() {
        try {
            Usuarios user = (Usuarios) session.getAttribute("usuario");
            if (user != null) {
                usuario = uDAO.obtenerRegistro(usuario);
                pdao.obtenerLista(listaPerfiles);
                return SUCCESS;
            } else {
                style = "alert-danger";
                estado = "Lo sentimos";
                mensaje = "No tienes permiso para ver esta página";
                return ERROR;
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            uDAO.cerrarConexion();
        }
    }

    public String obteneruser() {
        try {
            usuario = uDAO.obtenerUsuariosEmail(usuario);
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            uDAO.cerrarConexion();
        }
    }

    public String obtenerUsuario2() {
        try {
            usuario = uDAO.obtenerRegistro(usuario);
            mensaje = "Usuario actualizado";
            return SUCCESS;
        } catch (SQLException e) {
            mensaje = e.getMessage();
            return ERROR;
        } finally {
            uDAO.cerrarConexion();
        }
    }

    @Override
    public Usuarios getModel() {
        return usuario;
    }

    public Usuarios getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuarios usuario) {
        this.usuario = usuario;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public List<Usuarios> getListaUsuarios() {
        return listaUsuarios;
    }

    public List<Perfiles> getListaPerfiles() {
        return listaPerfiles;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

}
