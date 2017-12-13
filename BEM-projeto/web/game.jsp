<%-- 
    Document   : game
    Created on : 26/10/2017, 21:17:50
    Author     : Maryanne Alice
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
            <li class="nav-item">
              <a class="nav-link" href="singin.jsp">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <br><br><br><br>
    <!-- Page Content -->
    <div class="container">
            <div id="figure">
                <a class="menuLogin" href="questionario/formulario.jsp">
                    <figure class="fig-pic">
                        <img src="imgs/imgsOption/form.png" title="Formulario" alt="" class="img-rounded">
                        <figcaption>Formulário</figcaption>
                    </figure>
                </a>
                <figure class="fig-pic"></figure>
                <a class="menuLogin" href="game/index.html">
                    <figure class="fig-pic">
                        <img src="imgs/imgsOption/game.png" title="game" alt="" class="img-rounded">
                        <figcaption>Jogo Interativo</figcaption>
                    </figure>
                </a>
            </div>
        </div>
    <br><br><br><br>
        <div class="m-0 text-left">
            <small>
                &nbsp;&nbsp;Icons made by <a href="https://www.flaticon.com/authors/prosymbols" title="Prosymbols" target="_blank">
                Prosymbols</a> from <a href="https://www.flaticon.com/" title="Flaticon" target="_blank">www.flaticon.com</a>
                is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" 
                title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a>
            </small>
            <br/>
            <small>
                &nbsp;&nbsp;Icons made by <a href="http://www.freepik.com" title="Freepik" target="_blank">Freepik</a>
                from <a href="https://www.flaticon.com/" title="Flaticon" target="_blank">www.flaticon.com</a>
                is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0" 
                target="_blank">CC 3.0 BY</a>
            </small>
        </div>
    <!-- /.container -->
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
