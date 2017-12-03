<%-- 
    Document   : header.jsp
    Created on : 01/12/2017, 15:55:54
    Author     : Maryanne Alice 
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
            <li class="nav-item">
              <a class="nav-link" href="loginAdministrador/home.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/BEM-projeto/ServletListarProfissional">Validar Cadastro Psicólogo</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../cadastroAdministrador/adicionarAdmin.jsp">Adicionar Administrador</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="logout.jsp">Sair</a>
            </li>
          </ul>
        </div>
    </nav>
        
    <!-- Page Content -->
    <div class="container">       
        <!-- Page Heading/Breadcrumbs -->
        <div class="jumbotron">
        <form  id="contactForm" data-toggle="validator" role="form" method="post" action="/BEM-projeto/ServletValidarProfissional">
        <table class="table">
                <thead>
                    <tr>
                        <th><center>CRP</center></th>
                        <th><center>Nome</center></th>
                        <th><center>Data Solicitação</center></th>
                        <th><center>Validação</center></th>
                        <!--<th></th>-->
                    </tr>
                 </thead>
                <tbody>
                <c:forEach var="p" items="${listaPsicologos}" varStatus="ordem">
                    <tr>
                        <td><center>${p.crp}<input type="hidden" name="crpValidacao" value="${p.crp}"/></center></td>
                        <td><center>${p.nome}</center></td>
                        <td><center>${p.data}</center></td>
                        <td>
                            <center>
                                <select name="select_validacao" class="form-control" id="exampleFormControlSelect1">
                                    <option value="nao_validado"
                                        <c:if test="${p.statusValidacao == false}"> selected="true"  </c:if>
                                    >Não validado</option>
                                    <option value="validado"
                                        <c:if test="${p.statusValidacao == true}"> selected="true" </c:if> 
                                    >Validado</option>
                                </select>
                            </center>
                        </td>
                        <!--<td> <a href="#">Excluir solicitação</a> </td>-->
                    </tr>
                </c:forEach>
                </tbody>
            </table> 
            <br/>
            <div class="control-group form-group">
                <div class="row">
                    <div class="col-6 col-md-12">
                        <input type="submit" class="form-control btn btn-primary btn-cadPsic" 
                               name="enviar" value="Atualizar"/>
                    </div>
                </div>
            </div>
            </form>
        </div>
        <!-- /.jumbotron -->
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