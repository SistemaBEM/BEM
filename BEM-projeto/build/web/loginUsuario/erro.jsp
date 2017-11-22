<%-- 
    Document   : 404
    Created on : 26/10/2017, 20:51:19
    Author     : Leonardo Marques
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
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="../css/modern-business.css" rel="stylesheet">
    <link href="../css/auxiliar.css" rel="stylesheet">
    <link href="../css/selected-css.css" rel="stylesheet">
    <link href="../css/bootstrap-select.css" rel="stylesheet">
    
    <!--SCRIPT-->
    <script src="../https://code.jquery.com/jquery-3.2.1.slim.js"></script>
    <script src="../https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.js"></script>
    <script src="../js/bootstrap-select.js"></script>
    <script src="../vendor/jquery/jquery.min.js"></script>
  </head>

  <body>
    <%
        String login =(String)session.getAttribute("l");
        if(login==null){
            response.sendRedirect("index.jsp");
        }

    %>
        <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
          <a class="navbar-brand bem_logo" href="../index.jsp">bem</a>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">
      <!-- Page Heading/Breadcrumbs -->
      <div class="jumbotron">
        <h1 class="display-1">OPS...</h1>
        <br/><br/><br/>
        <h1>Ocorreu um erro! </h1><br/>
        <h2>Parece que você não está no <a class="navbar-brand bem_logo" href="#">bem</a> =( </h2>
        <h2> Reveja seu login e/ou sua senha! Venha conosco fazer o <a class="navbar-brand bem_logo" href="#">bem</a> =) </h2>
        
        <br/>
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
    <script type="text/javascript">
	window.setTimeout("location.href='../index.jsp'",20000);
    </script>
    
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
    <script src="../js/validator.min.js"></script>
  </body>

</html>

