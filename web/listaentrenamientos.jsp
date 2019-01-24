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
                            Entrenamientos				
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
            <h3 class="mb-30">Lista de Entrenamientos</h3>



            <table class="table table-bordered">
                <thead>
                <th>Rutina</th>
                <th>Entrenador</th>
                <th>Cliente</th>
                <th>Tiempo</th>
                <th>Precio</th>
                <th>Abonado</th>
                <th>Saldo</th>
                <th>Estado</th>
                <th>Inicio</th>
                <th>Fin</th>
                    <s:if test="#user.idperfil==1">
                    <th>Activar</th>
                    </s:if>
                </thead>

                <tbody>
                    <s:iterator value="listaEntrenamientos">
                        <tr>
                            <td>
                                <s:property value="rutina.descripcion"/>                                
                            </td>
                            <td>
                                <s:url value="entrenandor" var="entrenandor">
                                    <s:param name="identrenamiento" value="identrenamiento"/>
                                </s:url>
                                <s:if test="abono==0">
                                    Sin asignar
                                </s:if>
                                <s:elseif test="entrenador.nombre1==null">
                                    <s:if test="#user.idperfil==1">
                                        <s:a href="%{entrenandor}" cssClass="btn btn-small btn-primary text-white"><i class="fa fa-user-circle"> Asignar entrenador</i></s:a>
                                    </s:if>
                                    <s:else>
                                        Sin asignar
                                    </s:else>
                                </s:elseif>
                                <s:else>
                                    <s:property value="entrenador.fullname"/>
                                    <s:if test="#user.idperfil==1">
                                        <s:a href="%{entrenandor}" cssClass="btn btn-small btn-warning text-white"><i class="fa fa-user-circle"> Cambiar</i></s:a>
                                    </s:if>
                                </s:else>
                            </td>
                            <td>
                                <s:property value="cliente.fullname"/>
                            </td>
                            <td> 
                                <s:property value="periodo.descripcion"/>
                            </td>
                            <td>
                                <s:property value="precio"/>
                            </td>
                            <td>
                                <s:property value="getText('{0,number,#,##0.00}', {abono})"/>  
                            </td>                           
                            <td>
                                <s:property value="getText('{0,number,#,##0.00}', {saldo})"/>
                            </td>                           
                            <td>
                                <s:property value="estados.descripcion"/>
                            </td>                           
                            <td>
                                <s:if test="fechainicio==null">
                                    Sin asignar
                                </s:if>
                                <s:else>
                                    <s:property value="fechainicio"/>
                                </s:else>                               
                            </td>                           
                            <td>
                                <s:if test="fechafin==null">
                                    Sin asignar
                                </s:if>
                                <s:else>
                                    <s:property value="fechafin"/>
                                </s:else>                               
                            </td>

                            <s:if test="#user.idperfil==1">
                                <td>
                                    <s:if test="abono==0">
                                        <s:url value="activar" var="activar">
                                            <s:param name="identrenamiento" value="identrenamiento"/>
                                        </s:url>
                                        <s:a href="%{activar}" cssClass="btn btn-small btn-success text-white"><i class="fa fa-check"> Activar</i></s:a>
                                    </s:if>
                                    <s:elseif test="saldo>0" >
                                        <s:url value="activar2" var="activar">
                                            <s:param name="identrenamiento" value="identrenamiento"/>
                                        </s:url>
                                        <s:a href="%{activar}"  cssClass="btn btn-small btn-info text-white"><i class="fa fa-check"> Abonar</i></s:a>
                                    </s:elseif>
                                    <s:else>
                                        <h6 class="text-info">Listo</h6>
                                    </s:else>
                                </td>                           
                            </s:if>
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