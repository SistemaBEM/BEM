<%-- 
    Document   : 404
    Created on : 26/10/2017, 20:51:19
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
    <script src="https://code.jquery.com/jquery-3.2.1.slim.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-select.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
  </head>
    
  <body class="cadastroPage">
    <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand bem_logo" href="../index.jsp">bem</a>
      </div>
      <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/loginAdministrador/home.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/ListarProfissional">Validar Cadastro Psicólogo</a>
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
        <div class="jumbotron title-page">
        <br/><br/>
        <h2 class="display-8">
            Cadastro de Administrador
        </h2>
        <br/>
        <ol <c:if test="${message != null}"> class="breadcrumb errorOlColor" </c:if> >${message}</ol>
            <c:remove var="message" scope="session" /> 
        <br/><br/>
            <form class="form" id="contact-form" data-toggle="validator" role="form" method="post" action="../ServletCadastroAdministrador">
                <div class=" control-group form-group has-feedback">
                    <div class="controls">
                        <div class="row">
                            <div class="col-6 col-md-2">
                                <label class="control-label">Nome Completo</label>
                            </div>
                            <div class="col-6 col-md-7">
                                <input type="text" class="form-control" name="nome_completo"
                                       data-error="Somente letras" pattern="[a-zA-Z ]+" required/>
                                <span class="" aria-hidden="true"></span>
                                <div class="help-block with-errors">Campo Obrigatório</div>
                            </div>
                        </div>
                    </div>
                </div><br/>

                <div class="control-group form-group has-feedback">
                    <div class="row">
                        <div class="col-6 col-md-2">
                            <label class="control-label">CPF</label>
                        </div>
                    <div class="col-6 col-md-7">
                        <input type="text" class="form-control" name="cpf" placeholder="Insira somente números" maxlength="11"
                               data-error="Informe somente números" pattern="^[0-9]{1,}$" required/>
                        <span class="" aria-hidden="true"></span>
                        <div class="help-block with-errors">Campo Obrigatório</div>
                    </div>
                    </div>
                </div>
                <br/>
                
                <div class=" control-group form-group has-feedback">
                    <div class="controls">
                        <div class="row">
                            <div class="col-6 col-md-2">
                                <label class="control-label">Login</label>
                            </div>
                            <div class="col-6 col-md-7">
                                <input type="text" class="form-control" name="login"
                                       data-error="Entre 6 e 20 caracteres"  data-minlength="6" 
                                       data-maxlength="20" maxlength="20" required/>
                                <div class="help-block with-errors">Campo obrigatório</div>
                                <span class="" aria-hidden="true"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <br/>
                <div class=" control-group form-group has-feedback">
                    <div class="controls">
                        <div class="row">
                            <div class="col-6 col-md-2">
                                <label class="control-label">Senha</label>
                            </div>
                            <div class="col-6 col-md-7">
                                <input type="password" class="form-control" id="senha" name="senha" 
                                       data-error="Entre 6 e 20 caracteres" data-minlength="6" 
                                       data-maxlength="20" maxlength="20" required/>
                                <div class="help-block with-errors">Campo obrigatório</div>
                                <span class="" aria-hidden="true"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <br/>
                <div class=" control-group form-group has-feedback">
                    <div class="controls">
                        <div class="row">
                            <div class="col-6 col-md-2">
                                <label class="control-label">Confirmação de Senha</label>
                            </div>
                            <div class="col-6 col-md-7">
                                <input type="password" class="form-control" name="conf_senha"
                                 data-error="Entre 6 e 20 caracteres" data-minlength="6" data-maxlength="20" 
                                 data-match="#senha" data-match-error="As senha são diferentes"
                                 maxlength="20" required/>
                                <div class="help-block with-errors">Campo obrigatório</div>
                                <span class="" aria-hidden="true"></span>
                            </div>
                        </div>
                    </div>
                </div>
                
                <br/><br/>     

                <div class="control-group form-group">
                    <div class="row">
                        <div class="col-6 col-md-9">
                            <input type="submit" class="form-control btn btn-primary btn-cadPsic" name="enviar" value="Cadastrar Administrador"/>
                        </div>
                    </div>
                </div>
            </form>
        <br/><br/>
        </div> <!-- /.jumbotron -->
    </div> <!-- /.container -->
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