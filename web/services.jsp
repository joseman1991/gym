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

        <jsp:include page="header.jsp"/>
        <s:if test="#user==null">
            <% response.sendRedirect("inicio");%>
        </s:if>
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
            <s:url action="fuerza" var="fuerza">
                <s:param name="idrutina" value="1"/>
            </s:url>
            
            <s:url action="peso" var="peso">
                <s:param name="idrutina" value="2"/>
            </s:url>
            
            <s:url action="musculo" var="musculo">
                <s:param name="idrutina" value="3"/>
            </s:url>
            
            <div class="container">
                <div class="row section-title">
                    <h1>Nos importa lo que ofrecemos.</h1>
                    <p>Nuestras mejores ofertas.</p>
                </div>					
                <div class="row">
                    <div class="col-lg-4">
                        <div class="single-offred">
                            <img class="img-fluid" src="img/o1.jpg" alt="">
                            <s:a href="%{fuerza}"><h4>Ejercicio de Fuerza</h4></s:a>
                            <p>
                                Rutinas diarias
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-offred">
                            <img class="img-fluid" src="img/o2.jpg" alt="">
                            <s:a href="%{peso}"><h4>Bajar de peso</h4></s:a>
                            <p>
                                Dieta y fitness
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-offred">
                            <img class="img-fluid" src="img/o3.jpg" alt="">
                            <s:a href="%{musculo}"><h4>Aumentar masa muscular</h4></s:a>
                            <p>
                                Proteínas y ejercicios
                            </p>
                        </div>
                    </div>												
                </div>
            </div>	
        </section>
        <!-- End offred Area -->




        <!-- Start top-course Area -->

        <!-- End top-course Area -->		

        <!-- Start testomial Area -->

        <!-- End testomial Area -->	

        <!-- Start feature Area -->
        <section class="feature-area section-gap">
            <div class="container">
                <div class="row section-title">
                    <h1>Nuestras características de primera categoría</h1>
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
                        <h1>Nunca es tarde para empezar, Únete a nosotros hoy!</h1>
                        <p>
                            Te esperamos
                        </p>
                        <s:if test="#user==null">
                            <a href="registro.jsp" class="primary-btn">Hazte Miembro</a>	
                        </s:if>
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