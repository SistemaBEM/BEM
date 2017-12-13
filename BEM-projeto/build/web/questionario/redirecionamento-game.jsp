<%-- 
    Document   : game
    Created on : 26/10/2017, 21:17:50
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
    <link href="${pageContext.request.contextPath}/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/selected-css.css" rel="stylesheet">

    <!--SCRIPT-->
    <script src="${pageContext.request.contextPath}/https://code.jquery.com/jquery-3.2.1.slim.js"></script>
    <script src="${pageContext.request.contextPath}/https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/auxiliarbtndiv.js"></script>
  </head>

  <body>
   <% /*
        Integer r1 =(Integer)session.getAttribute("r1");
        if((r1 == null)){
           response.sendRedirect("formulario.jsp");
        }
    */%> 
    <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand bem_logo" href="${pageContext.request.contextPath}/index.jsp">bem</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link link-nav" href="${pageContext.request.contextPath}/about.jsp">Sobre Nós</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/contact2.jsp">Contate um Profissional</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/contact.jsp">Fale Conosco</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/singin.jsp">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">
        <div class="jumbotron title-page">
        <h4 class="display-9">
            Oi, esse são profissionais que estão dispostos a te ajudar a ficar 
            <a class="navbar-brand bem_logo" href="#">bem</a>
        </h4>
        <br/>
        <div> <!--  CARDS profissionais  -->
            <div class="row">
            <c:forEach var="p" items="${listaPsicologos}" varStatus="ordem">
                <div class="col-sm-4">
                    <div class="card" style="width: 20rem;">
                        <a href="#" class="thumbnail">
                            <c:if test="${p.psic.sexo == 'F'}">
                                <img class="card-img-top" style="border-radius: 175px;  width: 250px;"
                                     src="${pageContext.request.contextPath}/imgs/perfilProfissional/medica.png" alt="..."  >
                            </c:if>
                            <c:if test="${p.psic.sexo == 'M'}">
                                <img class="card-img-top" style="border-radius: 175px; width: 250px;" 
                                     src="${pageContext.request.contextPath}/imgs/perfilProfissional/medico.png" alt="..."  >
                            </c:if>
                        </a> 
                        <div class="card-body">
                                <h4 class="card-title">${p.psic.nome}</h4>
                                <h6 class="card-subtitle mb-2 text-muted">${p.psic.EMail} </h6>
                                <p></p>
                                <h6 class="card-subtitle mb-2 text-muted">CRP ${p.psic.crp} </h6>
                                <p></p>
                                <h6 class="card-subtitle mb-2 text-muted">Telefone: ${p.psic.contato} </h6>
                                <p></p>
                                <h6 class="card-subtitle mb-2 text-muted">Forma de Atendimento:     
                                    <c:if test="${p.ta.privado == true}">
                                        Privado; 
                                    </c:if>
                                    <c:if test="${p.ta.amil == true}">
                                        Amil; 
                                    </c:if>
                                    <c:if test="${p.ta.hapvida == true}">
                                        Hapvida; 
                                    </c:if>
                                    <c:if test="${p.ta.unimedNatal == true}">
                                        Unimed Natal; 
                                    </c:if>
                                </h6>
                        </div>
                    </div> <!-- card -->
                </div> <!-- col-sm-4 -->
            </c:forEach>
            </div> <!-- row -->
        </div> <!--   CARDS profissionais  -->
        </div> <!-- /.jumbotron -->
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
    <script src="${pageContext.request.contextPath}/js/contact_me.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-select.js"></script>
    <script src="${pageContext.request.contextPath}/js/validator.min.js"></script>
    <%/* r1 = null;*/ %>
  </body>
</html>
