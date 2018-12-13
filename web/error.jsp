<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html class="no-js">
    <head>
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
        <header id="header">
             <div class="header-top">
                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-md-4 col-4 header-top-left no-padding">
                            <a href="mailto:support@colorlib.com"><span class="lnr lnr-location"></span></a>
                            <a class="contact-texts" href="mailto:support@colorlib.com">support@colorlib.com</a>		
                        </div>
                        <div class="col-md-4 col-4 header-top-bottom no-padding">
                            <a href="index.jsp"><img class="img-fluid" src="img/logo.png" alt="" title="" /></a>			
                        </div>                      

                        <div class="col-md-4 col-4 header-top-right no-padding">
                            <a class="contact-texts" href="login.jsp">Iniciar Sesión</a>
                            <a href="login.jsp"><span class="lnr lnr-arrow-right-circle"></span></a>
                        </div>
                    </div>			  					
                </div>
            </div>
            <div class="container main-menu">
                <div class="row align-items-center justify-content-center">	
                    <nav id="nav-menu-container">
                        <ul class="nav-menu">
                            <li class="menu-active"><a href="index.jsp">Inicio</a></li>
                            <li><a href="index.jsp">Acerca de</a></li>
                            <li><a href="services.jsp">servicios</a></li>
                            <li><a href="index.jsp">Entrenadores</a></li>
                            <li><a href="index.jsp">Contactos</a></li>
                        </ul>
                    </nav><!-- #nav-menu-container -->		
                </div>
            </div>
        </header><!-- #header -->

        <!-- start banner Area -->
        <section class="banner-area relative" id="home">
            <div class="overlay overlay-bg"></div>	
            <div class="container">
                <div class="row  d-flex align-items-center justify-content-between" style="height: 400px">
                    <div class="banner-content col-lg-6 col-md-12 ">
                        <h1 class="text-uppercase">
                            Moldea tu<br>
                            Cuerpo Perfecto			
                        </h1>
                        <p class="pt-10 pb-10 text-white">
                            El gimnasio se encuentra en Jujan y tiene más de 30 máquinas. Con 13 remontes de última generación y una selección de opciones tanto para fisiculturistas como para deportistas.
                        </p>
                        <a href="registro.jsp" class="primary-btn">Hazte miembro</a>
                    </div>										
                </div>
            </div>					
        </section>
        <!-- End banner Area -->	


        <div class="container col-lg-4 col-lg-offset-4">
              <h3><s:property value="mensaje"/></h3>
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