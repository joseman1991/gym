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
        <jsp:include page="header.jsp"/>
        <s:if test="#user==null">
            <% response.sendRedirect("inicio");%>
        </s:if>


        <!-- start banner Area -->
        < <section class="banner-area relative about-banner" id="home">	
            <div class="overlay overlay-bg"></div>
            <div class="container">				
                <div class="row d-flex align-items-center justify-content-center">
                    <div class="about-content col-lg-12">
                        <h1 class="text-white">
                            Registro de Clientes				
                        </h1>	
                        <p class="text-white link-nav"><a href="index.jsp">Inicio </a>  <span class="lnr lnr-arrow-right"></span>  <a href="registro.jsp"> Registro de Clientes</a></p>
                    </div>	
                </div>
            </div>
        </section>
        <!-- End banner Area -->	


        <div class="container col-lg-4 col-lg-offset-4 mt-20">
            <h3 class="mb-30">Registro</h3>
            <s:if test="mensaje!=null">
                <div class="alert <s:property value="style"/> alert-dismissible">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong>¡<s:property value="estado"/>!</strong> <s:property value="mensaje"/>.
                </div>
            </s:if>     
            <form class="generic-blockquote" action="registrarA" method="post" id="registro">  
                <h3 class="mb-0">Perfil de Usuario</h3>
                <div class="default-select mt-10" id="default-select" style="border:0.5px solid black; height: 45px">
                    <select class="single-input" name="idperfil">
                        <s:iterator value="listaPerfiles">
                            <option value="<s:property value="idperfil"/>"><s:property value="descripcion"/></option>
                        </s:iterator>
                    </select>
                </div>

                <div class="mt-10">
                    <input type="text" name="nombre1" placeholder="Primer Nombre" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Primer Nombre'" required class="single-input" style="border:0.5px solid black">
                </div>                

                <div class="mt-10">
                    <input type="text" name="nombre2" placeholder="Segundo Nombres" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Segundo Nombre'" class="single-input" style="border:0.5px solid black">
                </div>                

                <div class="mt-10">
                    <input type="text" name="apellido1" placeholder="Primer Apellido" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Primer Apellido'" required class="single-input" style="border:0.5px solid black">
                </div>                
                <div class="mt-10">
                    <input type="text" name="apellido2" placeholder="Segundo Apellido" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Segundo Apellido'" required class="single-input" style="border:0.5px solid black">
                </div>                
                <div class="mt-10">
                    <input type="email" name="email" placeholder="Correo" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Correo'" required class="single-input" style="border:0.5px solid black">
                    <label class="error" style="display: none" id="userError"><strong>Correo ya se encuentra registrado</strong></label>
                </div>
                <div class="mt-10">
                    <input type="password" name="pclave" placeholder="Contraseña" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Contraseña'" required class="single-input required" style="border:0.5px solid black" id="pclave">
                </div>

                <div class="mt-10">
                    <input type="password" class="single-input required" name="clave" placeholder="Repite Contraseña"    style="border:0.5px solid black" id="clave">
                </div>

                <div class="mt-10">
                    <input type="text" name="direccion" placeholder="Direccion" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Direccion'" required class="single-input" style="border:0.5px solid black">
                </div>  

                <div class="mt-10">
                    <input type="text" name="telefono" placeholder="Telefono" onfocus="this.placeholder = ''" onblur="this.placeholder = Telefono'" class="single-input" style="border:0.5px solid black">
                </div>  

                <br>
                <div class="form-group">
                    <input type="submit" name="submit" class="genric-btn primary circle" value="Registrar Usuarios" id="boton">
                </div>

            </form>

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
        <script src="js/jquery.validate.min.js"></script>	
        <script src="js/messages_es.js"></script>	
        <script src="js/usuario.js"></script>	
    </body>
</html>