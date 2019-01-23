<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html class="no-js">
    <head>
        <s:set name="user" value="#session['usuario']"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon-->
        <link rel="shortcut icon" href="img/fav.png">
        <!-- Author Meta -->
        <meta name="author" content="colorlib">
        <!-- Meta Description -->
        <meta name="description" content="">
        <!-- Meta Keyword -->
        <meta name="keywords" content="">
        <!-- meta character set -->

        <!-- Site Title -->
        <title>Gym</title>

        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
        <!--
        CSS
        ============================================= -->
        <link rel="stylesheet" href="css/linearicons.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/nice-select.css">							
        <link rel="stylesheet" href="css/animate.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">			
        <link rel="stylesheet" href="css/jquery-ui.css">			
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/estilo.css">

    </head>
    <body>	

        <jsp:include page="header.jsp"/>

        <!-- start banner Area -->
        <section class="banner-area relative about-banner" id="home">	
            <div class="overlay overlay-bg"></div>
            <div class="container">				
                <div class="row d-flex align-items-center justify-content-center">
                    <div class="about-content col-lg-12">
                        <h1 class="text-white">
                            Iniciar sesión				
                        </h1>	
                        <p class="text-white link-nav"><a href="index.jsp">Inicio </a>  <span class="lnr lnr-arrow-right"></span>Lista de usuarios</p>
                    </div>	
                </div>
            </div>
        </section>
        <!-- End banner Area -->	


        <div class="container col-lg-10 col-md-10 col-lg-offset-4 mt-15">
            <s:if test="mensaje!=null">
                <div class="alert <s:property value="style"/> alert-dismissible">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong>¡<s:property value="estado"/>!</strong> <s:property value="mensaje"/>.
                </div>
            </s:if>  
            <h3 class="mb-30">Lista de Usuarios                 
                <s:if test="idestado==1">
                    Activos
                </s:if>
                <s:else>
                    Inactivos
                </s:else>

            </h3>
            <form action="buscar" method="post">
                <div class="input-group-icon mt-20">
                    <div class="icon"><i class="fa fa-search" aria-hidden="true"></i></div>
                    <input type="text" name="nombre1" placeholder="Buscar" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Buscar'" class="single-input" style="border:0.5px solid black" id="pclave"><br>
                    <input type="hidden" name="idestado" value="<s:property value="idestado"/>"/>
                </div>
            </form>

            <table class="table table-bordered">
                <thead>
                <th>Correo Electrónico</th>
                <th>Nombres y Apellidos</th>
                <th>Perfil</th>
                <th>Teléfono</th>
                <th>Direccion</th>
                <th>Estado</th>
                <th>Acción</th>
                <th>Actualizar</th>
                </thead>

                <tbody>
                    <s:iterator value="listaUsuarios">
                        <tr>
                            <td>
                                <s:property value="email"/>                                
                            </td>
                            <td>
                                <s:property value="fullname"/>                                
                            </td>
                            <td>
                                <s:property value="perfil.descripcion"/>
                            </td>
                            <td> 
                                <s:property value="telefono"/>
                            </td>
                            <td>
                                <s:property value="direccion"/>
                            </td>
                            <td>
                                <s:property value="estados.descripcion"/>
                            </td>
                            <td>
                                <s:if test="usuario.idestado==1">
                                    <form action="actualizaruser" method="post">
                                        <button type="submit" class="btn btn-small btn-warning"><i class="fa fa-ban"> Inactivar</i></button>
                                        <input type="hidden" name="idusuario" value="<s:property value="idusuario"/>"/>
                                        <input type="hidden" name="idestado" value="2"/>
                                    </form>
                                </s:if>
                                <s:else>
                                    <form action="actualizaruser" method="post">
                                        <button type="submit" class="btn btn-small btn-success"><i class="fa fa-check"> Activar</i></button>
                                        <input type="hidden" name="idusuario" value="<s:property value="idusuario"/>"/>
                                        <input type="hidden" name="idestado" value="1"/>
                                    </form> 
                                </s:else>

                            </td> 
                            <td>
                                <form action="confirmaactualiza" method="post">
                                    <button type="submit" class="btn btn-small btn-info"><i class="fa fa-upload"> Actualizar</i></button>
                                    <input type="hidden" name="idusuario" value="<s:property value="idusuario"/>"/>
                                </form> 
                            </td>
                        </tr>
                    </s:iterator>
                </tbody>
            </table>

        </div>
        <!-- start footer Area -->		
        <footer class="footer-area section-gap">
            <div class="container">

                <div class="footer-bottom row align-items-center">
                    <p class="footer-text m-0 col-lg-6 col-md-12"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> Derechos reservados <i class="fa fa-heart-o" aria-hidden="true"></i></a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    <div class="col-lg-6 col-sm-12 footer-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-behance"></i></a>
                    </div>
                </div>
            </div>
        </footer>	
        <!-- End footer Area -->

        <script src="js/vendor/jquery-2.2.4.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="js/vendor/bootstrap.min.js"></script>			
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
        <script src="js/easing.min.js"></script>			
        <script src="js/hoverIntent.js"></script>
        <script src="js/superfish.min.js"></script>	
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>	
        <script src="js/jquery-ui.js"></script>								
        <script src="js/jquery.nice-select.min.js"></script>	
        <script src="js/owl.carousel.min.js"></script>									
        <script src="js/mail-script.js"></script>	
        <script src="js/main.js"></script>	
    </body>
</html>