<%-- 
    Document   : 404
    Created on : 26/10/2017, 20:51:19
    Author     : marya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Modern Business - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="../css/modern-business.css" rel="stylesheet">
    <link href="../css/auxiliar.css" rel="stylesheet">
    <link href="../css/bootstrap-select.css" rel="stylesheet">
    <link href="../css/selected-css.css" rel="stylesheet">

    <!--SCRIPT-->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.js"></script>
    <script src="../vendor/jquery/jquery.min.js"></script>
    
  </head>

  <body>
    <%
        Integer r1 =(Integer)session.getAttribute("r1");
        //redirect user to login page if not logged in
        if((r1 == null)){
            response.sendRedirect("formulario.jsp");
        }
    %>
    <!-- Navigation -->
        <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand bem_logo" href="../index.jsp">bem</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link link-nav" href="../about.jsp">Sobre Nós</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../contact2.jsp">Contate um Profissional</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../contact.jsp">Fale Conosco</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../singin.jsp">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">404
        <small>Página Não Encontrada</small>
      </h1>
      
      <div class="jumbotron">
        <h1 class="display-1">404</h1>
        <p>Ops! Ocorreu um erro. Escolha o caminho, que tudo ficará <a class="navbar-brand bem_logo" href="index.jsp">bem</a></p>
        <ul>
          <li>
            <a href="index.jsp">Home</a>
          </li>
          <li>
            <a href="singin.jsp">Login</a>
          </li>
          <li>
            <a href="about.jsp">Sobre Nós</a>
          </li>
          <li>
            <a href="contact2.jsp">Contate um Profissional</a>
          </li>
          <li>
            <a href="contact.jsp">Fale Conosco</a>
          </li>
        </ul>
      </div>
      <!-- /.jumbotron -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2017</p>
      </div>
      <!-- /.container -->
    </footer>
    <!-- Bootstrap core JavaScript -->
    <script src="../vendor/popper/popper.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
    
    <script>
        document.addEventListener('DOMContentLoaded', function () {
          var mySelect = $('#first-disabled2');

          $('#special').on('click', function () {
            mySelect.find('option:selected').prop('disabled', true);
            mySelect.selectpicker('refresh');
          });

          $('#special2').on('click', function () {
            mySelect.find('option:disabled').prop('disabled', false);
            mySelect.selectpicker('refresh');
          });

          $('#basic2').selectpicker({
            liveSearch: true,
            maxOptions: 1
          });
        });
    </script>
    <!-- Contact form JavaScript -->
    <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
    <script src="../js/contact_me.js"></script>
    <script src="../js/bootstrap-select.js"></script>
    <script src="../js/validator.min.js"></script>
  </body>

</html>

