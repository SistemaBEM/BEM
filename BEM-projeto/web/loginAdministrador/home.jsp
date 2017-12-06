<%-- 
    Document   : header.jsp
    Created on : 01/12/2017, 15:55:54
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
    <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/css/modern-business.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/auxiliar.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/selected-css.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/bootstrap-select.css" rel="stylesheet">
    
    <!--SCRIPT-->
    <script src="${pageContext.request.contextPath}/https://code.jquery.com/jquery-3.2.1.slim.js"></script>
    <script src="${pageContext.request.contextPath}/https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-select.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
  </head>
  <body>
      
    <%
        String login =(String)session.getAttribute("login");
        //redirect user to login page if not logged in
        if((login == null)){
            response.sendRedirect("index.jsp");
        }
    %>
        <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand bem_logo" href="../index.jsp">bem</a>
      </div>
      <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="home.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/ServletListarProfissional">Validar Cadastro Psicólogo</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/cadastroAdministrador/index.jsp">Adicionar Administrador</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../logout.jsp">Sair</a>
            </li>
          </ul>
        </div>
    </nav>
        
    <!-- Page Content -->
    <div class="container">       
        <!-- Page Heading/Breadcrumbs -->
        <div class="jumbotron">
         
            <div id="figure">
                <a class="menuLogin" href="../ServletListarProfissional">
                    <figure class="fig-pic">
                        <img src="../imgs/imgsOptAdm/account-validation.png" title="Account Validation" alt="" class="img-rounded">
                    </figure>
                </a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a class="menuLogin" href="../cadastroAdministrador/index.jsp">
                    <figure class="fig-pic">
                        <img src="../imgs/imgsOptAdm/addition-account.png"  height="301"
                             title="Addition Account Adm" alt="" class="img-rounded">
                    </figure>
                </a>
            </div>
            
        </div>
        <!-- /.jumbotron -->
    </div>
    <!-- /.container -->
    
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
    <script src="${pageContext.request.contextPath}/vendor/popper/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>
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
    <script src="${pageContext.request.contextPath}/js/validator.min.js"></script>
  </body>
  
</html>