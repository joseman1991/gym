<%-- 
    Document   : header
    Created on : 23-ene-2019, 7:03:06
    Author     : 
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <s:set name="user" value="#session['usuario']"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <s:url action="confirmaactualizar" var="confirmaactualizar">
            <s:param name="idusuario" value="#user.idusuario"/>
        </s:url>
    </head>
    <body>
        <header id="header">
            <div class="header-top">
                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-md-3 col-3 header-top-left no-padding">
                            <a href="mailto:support@colorlib.com"><span class="lnr lnr-location"></span></a>
                            <a class="contact-texts" href="mailto:support@colorlib.com">support@colorlib.com</a>		
                        </div>

                        <div class="col-md-3 col-3 header-top-bottom no-padding">
                            <a href="index.jsp"><img class="img-fluid" src="img/logo.png" alt="" title="" /></a>			
                        </div>                      

                        <div class="col-md-2 col-2 header-top-right no-padding">
                            <s:if test="#user!=null">
                                <s:a cssClass="contact-texts" href="%{confirmaactualizar}"><i class="fa fa-user-circle"></i> <s:property value="#user.fullname"/></s:a>

                            </s:if>
                        </div>
                        <div class="col-md-2 col-2 header-top-right no-padding">
                            <s:if test="#user!=null">
                                <a class="contact-texts" href="#">Perfil: <s:property value="#user.perfil.descripcion"/></a>                                
                            </s:if>
                        </div>

                        <div class="col-md-2 col-2 header-top-right no-padding">
                            <s:if test="#user!=null">
                                <a class="contact-texts" href="logout.jsp">Cerrar Sesión</a>
                                <a href="logout.jsp"><span class="lnr lnr-arrow-left-circle"></span></a>
                                </s:if>
                                <s:else>
                                <a class="contact-texts" href="login.jsp">Iniciar Sesión</a>
                                <a href="login.jsp"><span class="lnr lnr-arrow-right-circle"></span></a>
                                </s:else>
                        </div>
                    </div>			  					
                </div>
            </div>
            <div class="container main-menu">
                <div class="row align-items-center justify-content-center">	
                    <nav id="nav-menu-container">
                        <ul class="nav-menu">
                            <li class="menu-active"><a href="index.jsp">Inicio</a></li>       
                                <s:if test="#user.idperfil==2">
                                <li><a href="services.jsp">Servicios</a></li>
                                </s:if>

                            <s:if test="#user!=null">
                                <li class="menu-has-children"><a href="#">Usuarios</a>
                                    <ul>
                                        <li><a href="clave.jsp">Cambiar clave</a></li>

                                        <s:if test="#user.idperfil==1">
                                            <li><a href="registroAdmin">Registrar usuarios</a></li>  
                                            <li class="menu-has-children"><a href="#">Panel de Administración</a>
                                                <ul>
                                                    <li><a href="activos">Lista de Usuarios Activos</a></li>
                                                    <li><a href="inactivos">Lista de usuarios Inactivos</a></li>
                                                </ul>
                                            </li>
                                        </s:if>
                                    </ul>
                                </li>

                            </s:if>


                            <s:if test="#user.idperfil==1 || #user.idperfil==2">
                                <li class="menu-has-children"><a href="#">Lista de emtrenamientos</a>
                                    <ul>
                                        <s:if test="#user.idperfil==2">
                                            <s:url action="listaentrena2" var="listaentrena2">
                                                <s:param name="idcliente" value="#user.idusuario"></s:param>
                                            </s:url>
                                            <li><s:a href="%{listaentrena2}">Estado de compras</s:a></li>
                                            </s:if>
                                            <s:else>
                                                <s:url action="listaentrena" var="listaentrena">
                                                    <s:param name="idestado" value="4"></s:param>
                                                </s:url>
                                            <li><s:a href="%{listaentrena}">Estado de compras</s:a></li>

                                        </s:else>

                                    </ul>
                                </li>
                            </s:if>


                            <s:if test="#user.idperfil==3">
                                <li class="menu-has-children"><a href="#">Mis estudiantes</a>
                                    <ul>
                                        <s:url action="listaestudiantes" var="listaestudiantes">
                                            <s:param name="identrenador" value="#user.idusuario"></s:param>
                                        </s:url>
                                        <li><s:a href="%{listaestudiantes}">Lista de estudiantes</s:a></li>
                                        </ul>
                                    </li>
                            </s:if>

                           
                        </ul>
                    </nav><!-- #nav-menu-container -->		
                </div>
            </div>
        </header><!-- #header -->
    </body>
</html>
