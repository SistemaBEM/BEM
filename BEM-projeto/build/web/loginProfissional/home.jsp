<%-- 
    Document   : 404
    Created on : 26/10/2017, 20:51:19
    Author     : Astrogilda Caroline
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
              <li class="nav-item active">
                <a class="nav-link" href="${pageContext.request.contextPath}/loginProfissional/home.jsp">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/ListarComentarios">Validar Comentários</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="../logout.jsp">Sair</a>
              </li>
            </ul>
        </div>
    </nav>
        
    <!-- Page Content -->
    

      <!-- Page Heading/Breadcrumbs -->
      <div class="jumbotron">
            <div class="row">
                <div class="col-xs-6 col-md-3">
                    <a href="#" class="thumbnail">
                        <c:if test="${sexo == 'F'}">
                            <img style="border-radius: 175px;" src="${pageContext.request.contextPath}/imgs/perfilProfissional/medica.png" alt="..."  >
                        </c:if>
                        <c:if test="${sexo == 'M'}">
                            <img style="border-radius: 175px;" src="${pageContext.request.contextPath}/imgs/perfilProfissional/medico.png" alt="..."  >
                        </c:if>
                    </a>
                </div>
                <div class="panel panel-default col-xs-6 col-md-6">
                    <div class="panel-body">
                        <h5 class="fonte">Nome: ${prof.nome}</h5>
                        <h5 class="fonte">CRP: ${prof.crp}</h5>
                        <h5 class="fonte">Rua: ${prof.rua}</h5>
                        <h5 class="fonte">Numero: ${prof.numero}</h5>
                        <h5 class="fonte">Bairro: ${prof.bairro}</h5>
                        <h5 class="fonte">Cidade: ${prof.cidade}</h5>
                        <h5 class="fonte">Contato: ${prof.contato}</h5>
                        <h5 class="fonte">E-mail: ${prof.EMail}</h5>
                    </div>
                </div>
            </div><br>
            <div class="row">
                
                <div class="col-xs-6 col-md-3">
                    <form method="post" action="update.jsp">
                        <!--<input type="submit" class="form-control btn btn-primary btn-cadPsic" value="Alterar Imagem">-->
                    </form>
                </div>
                <div class="col-xs-6 col-md-6">
                    <form method="post" action="update.jsp">
                        <input type="submit" class="form-control btn btn-primary btn-cadPsic" value="Alterar Dados">
                    </form>
                </div>
            </div>    
        <!-- <h1 class="display-1">Oii</h1>
        <br/><br/><br/>
        <h1 class="display-1">Page profissional</h1>
        <br/><br/> -->
      </div>
      <!-- /.jumbotron -->

    
    <!-- /.container -->

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