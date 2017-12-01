<%-- 
    Document   : services
    Created on : 26/10/2017, 21:06:24
    Author     : Jhonatas Gabriel 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Projeto BEM</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
    <link href="css/auxiliar.css" rel="stylesheet">

   </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand bem_logo" href="index.jsp">bem</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="about.jsp">Sobre Nós</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact2.jsp">Contate um Profissional</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.jsp">Fale Conosco</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="services.jsp">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div  class="container">
        <br/><br/>
      <!-- Page Heading/Breadcrumbs -->
        <h3 align="center" class="display-8"> Oii, como você se cadastrou no 
            <a class="navbar-brand bem_logo" href="#">bem</a>?</h3>
            <br/>
            <small>Psiu, se não possui, faça seu cadastro agora! 
              <a class="" href="cadastrar.jsp">Clique aqui</a>  </small>
            
    </div>
    <!-- /.container -->
    <br><br>
        <div class="container">
            <div id="figure">
                <a class="menuLogin" href="loginProfissional/index.jsp">
                    <figure class="fig-pic">
                        <img src="imgs/imgsSingIn/medicos-bem.png" title="Profissional" alt="" class="img-rounded">
                        <figcaption>Profissional</figcaption>
                    </figure>
                </a>
                <a class="menuLogin" href="loginUsuario/index.jsp">
                    <figure class="fig-pic">
                        <img src="imgs/imgsSingIn/pacientes-bem.png" title="Usuário" alt="" class="img-rounded">
                        <figcaption>Usuário</figcaption>
                    </figure>
                </a>
                <a class="menuLogin" href="loginAdmin/index.jsp">
                    <figure class="fig-pic">
                        <img src="imgs/imgsSingIn/administradores.png" title="Administrador" alt="" class="img-rounded">
                        <figcaption>Administrador(a)</figcaption>
                    </figure>
                </a>
            </div>
        </div>
    <br><br>
        <div class="m-0 text-left">
            <small>
                &nbsp;&nbsp;Icons made by <a href="https://www.flaticon.com/authors/popcorns-arts" target="_blank" 
                title="Icon Pond">Icon Pond</a> from <a href="https://www.flaticon.com/" title="Flaticon" 
                target="_blank">
                www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" 
                title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a>
            </small>
        </div>

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Projeto BEM 2017</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Contact form JavaScript -->
    <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

  </body>

</html>
