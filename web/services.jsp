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
                    <div class="container main-menu">
                        <div class="row align-items-center justify-content-center">	
                            <nav id="nav-menu-container">
                                <ul class="nav-menu">
                                    <li class="menu-active"><a href="index.jsp">Inicio</a></li>
                                    <li><a href="index.jsp">Acerca de</a></li>
                                    <li><a href="services.jsp">servicios</a></li>
                                    <li><a href="index.jsp">Entrenadores</a></li>
                                    <li><a href="index.jsp">Contactos</a></li>
                                    <s:if test="#user!=null">
                                <li><a href="#">Hola, <s:property value="#user.nombre"/></a></li>
                                <li><a href="#">Perfil: <s:property value="#user.perfil.descripcion"/></a></li>
                                </s:if>
                                </ul>
                            </nav><!-- #nav-menu-container -->		
                        </div>
                    </div>
                    </header><!-- #header -->

                    <!-- start banner Area -->
                    <section class="banner-area relative about-banner" id="home">	
                        <div class="overlay overlay-bg"></div>
                        <div class="container">				
                            <div class="row d-flex align-items-center justify-content-center">
                                <div class="about-content col-lg-12">
                                    <h1 class="text-white">
                                        Servicios				
                                    </h1>	
                                    <p class="text-white link-nav"><a href="index.jsp">Inicio </a>  <span class="lnr lnr-arrow-right"></span>  <a href="services.jsp"> Servicios</a></p>
                                </div>	
                            </div>
                        </div>
                    </section>
                    <!-- End banner Area -->	

                    <!-- Start offred Area -->
                    <section class="offred-area section-gap">
                        <div class="container">
                            <div class="row section-title">
                                <h1>Nos importa lo que ofrecemos.</h1>
                                <p>Nuestras mejores ofertas.</p>
                            </div>					
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="single-offred">
                                        <img class="img-fluid" src="img/o1.jpg" alt="">
                                        <a href="#"><h4>Ejejrcicio regular</h4></a>
                                        <p>
                                            Rutinas diarias
                                        </p>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="single-offred">
                                        <img class="img-fluid" src="img/o2.jpg" alt="">
                                        <a href="#"><h4>Entrenamiento sobre la marcha</h4></a>
                                        <p>
                                            Entrenadores y fitness
                                        </p>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="single-offred">
                                        <img class="img-fluid" src="img/o3.jpg" alt="">
                                        <a href="#"><h4>Paquetes de musculaciÃ³n</h4></a>
                                        <p>
                                            Proteinas y ejercicios
                                        </p>
                                    </div>
                                </div>												
                            </div>
                        </div>	
                    </section>
                    <!-- End offred Area -->


                    <!-- Start cta Area -->
                    <section class="cta-area">
                        <div class="container-fluid">
                            <div class="row no-padding">
                                <div class="col-lg-6 single-cta cta1 no-padding section-gap relative">
                                    <div class="overlay overlay-bg"></div>
                                    <h6 class=text-uppercase>Reservar una cita</h6>
                                    <h1>Ponte en forma ahora</h1>
                                    <a href="#" class="primary-btn">Reservar ahora</a>
                                </div>
                                <div class="col-lg-6 single-cta cta2 no-padding section-gap relative">
                                    <div class="overlay overlay-bg"></div>
                                    <h6 class=text-uppercase>Reservar una cita</h6>
                                    <h1>Ponte en forma ahora</h1>
                                    <a href="#" class="primary-btn">Reservar ahora</a>			

                                </div>
                            </div>
                        </div>	
                    </section>
                    <!-- End cta Area -->

                    <!-- Start top-course Area -->
                    <section class="top-course-area section-gap">
                        <div class="container">
                            <div class="row section-title">
                                <h1>Los mejores cursos que se ofrecen</h1>
                                <p>Mientras viertes el primer vaso de tu Chianti favorito.</p>
                            </div>	
                            <div class="row">
                                <div class="active-topcourse-carusel">
                                    <div class="single-carusel item">
                                        <div class="thumb">
                                            <img class="img-fluid" src="img/c1.jpg" alt="">
                                            <div class="join-btn"><a href="registro.jsp">Únete ahora</a></div>
                                        </div>
                                        <div class="title-price d-flex justify-content-between">
                                            <a href="#">
                                                <h4>MÃºsculo especÃ­fico del objetivo.</h4>
                                            </a>
                                            <h4 class="price">$275</h4>
                                        </div>
                                    </div>
                                    <div class="single-carusel item">
                                        <div class="thumb">
                                            <img class="img-fluid" src="img/c2.jpg" alt="">
                                            <div class="join-btn"><a href="#">Ãnete ahora</a></div>
                                        </div>
                                        <div class="title-price d-flex justify-content-between">
                                            <a href="#">
                                                <h4>Levantamiento de pesas</h4>
                                            </a>
                                            <h4 class="price">$200</h4>
                                        </div>
                                    </div>
                                    <div class="single-carusel item">
                                        <div class="thumb">
                                            <img class="img-fluid" src="img/c3.jpg" alt="">
                                            <div class="join-btn"><a href="#">Ãnete ahora</a></div>
                                        </div>
                                        <div class="title-price d-flex justify-content-between">
                                            <a href="#">
                                                <h4>Flexiona tu musculo</h4>
                                            </a>
                                            <h4 class="price">$225</h4>
                                        </div>
                                    </div>	

                                </div>
                            </div>
                        </div>	
                    </section>
                    <!-- End top-course Area -->		

                    <!-- Start testomial Area -->

                    <!-- End testomial Area -->	

                    <!-- Start feature Area -->
                    <section class="feature-area section-gap">
                        <div class="container">
                            <div class="row section-title">
                                <h1>Nuestras caracterÃ­sticas de primera categorÃ­a</h1>
                                <p>En la ciudad de Babahoyo, Jujan estamos localizados</p>
                            </div>						
                            <div class="row justify-content-between align-items-center">
                                <div class="col-lg-6 feature-left">
                                    <img class="img-fluid" src="img/f.jpg" alt="">
                                </div>
                                <div class="col-lg-6 feature-right">
                                    <div class="single-feature">
                                        <h4>Seguridad inteligente</h4>
                                        <p>
                                            La seguridad es con nosotros
                                        </p>
                                    </div>
                                    <div class="single-feature">
                                        <h4>Maquinas de alta generaciÃ³n</h4>
                                        <p>
                                            Nuestras maquinas son las mejores
                                        </p>
                                    </div>	
                                    <div class="single-feature">
                                        <h4>Apoyo sin fin</h4>
                                        <p>
                                            Los entrenadores estan altamente calificados.
                                        </p>
                                    </div>														
                                </div>
                            </div>
                        </div>	
                    </section>
                    <!-- End feature Area -->																					
                    <!-- Start callto Area -->
                    <section class="callto-area section-gap relative">
                        <div class="overlay overlay-bg"></div>
                        <div class="container">
                            <div class="row">
                                <div class="call-wrap mx-auto">
                                    <h1>Nunca es tarde para empezar, Ãºnete a nosotros hoy!</h1>
                                    <p>
                                        Te esperamos
                                    </p>
                                    <a href="#" class="primary-btn">Hazte Miembro</a>				
                                </div>
                            </div>
                        </div>	
                    </section>
                    <!-- End callto Area -->			

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