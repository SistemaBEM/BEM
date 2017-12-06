<%-- 
    Document   : header.jsp
    Created on : 01/12/2017, 15:55:54
    Author     : Leonardo Marques
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
              <a class="nav-link" href="../logout.jsp">Sair</a>
            </li>
          </ul>
        </div>
    </nav>
        
    <!-- Page Content -->
    <div class="container">       
        <!-- Page Heading/Breadcrumbs -->
        <div class="jumbotron">
            <h3> Avalie seus profissionais =) E nos ajude a continuar fazendo o bem </h3>
            <br/>
            <ol <c:if test="${message != null}"> class="breadcrumb" </c:if> >${message}</ol>
            <c:remove var="message" scope="session" />
            <br/>
        <form  id="contactForm" data-toggle="validator" role="form" method="post" action="/BEM-projeto/ServletApplyProfissional">
        
                <div class="control-group form-group has-feedback">
                    <div class="controls">
                        <div class="row">
                            <div class="col-6 col-md-2">
                              <label>Qual Profissional? </label>
                            </div>
                            <div class="col-6 col-md-7" style="height: 100%;">
                                <select name="select_nomeProfissional" class="form-control" data-error="Campo obrigatório" required>                    
                                    <c:forEach var="p" items="${listaPsicologos}" varStatus="ordem">
                                        <option value="0">Selecione...</option>
                                        <option value="${p.crp}">${p.nome}</option>
                                    </c:forEach>
                                </select>
                                <span class="" aria-hidden="true"></span>
                                <div class="help-block with-errors">Campo obrigatório</div>
                            </div>
                        </div>
                    </div>
                </div>
            <br/>
                <div class="control-group form-group has-feedback">
                    <div class="controls">
                        <div class="row">
                            <div class="col-6 col-md-2">
                              <label>Nota: </label>
                            </div>
                            <div class="col-6 col-md-7" style="height: 100%;">
                                <select name="select_notaProfissional" class=" form-control" data-error="Campo obrigatório" required>                    
                                        <option value="20">Selecione...</option>
                                        <option value="0">0</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>
                                </select>
                                <span class="" aria-hidden="true"></span>
                                <div class="help-block with-errors">Campo obrigatório</div>
                            </div>
                        </div>
                    </div>
                </div>
            <br/>
                    <div class="control-group form-group has-feedback">
                        <div class="row">
                            <div class="col-6 col-md-2">
                                <label class="control-label">Comentário: </label>
                            </div>
                        <div class="col-6 col-md-7">
                            <textarea rows="10" cols="100" class="form-control" name="mensagem" 
                                      maxlength="999" style="resize:none" required></textarea>
                        </div>
                        </div>
                    </div>
            
            <br/>
            <div class="control-group form-group">
                <div class="row">
                    <div class="col-6 col-md-12">
                        <input type="submit" class="form-control btn btn-primary btn-cadPsic" 
                               name="enviar" value="Avaliar Profissional"/>
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