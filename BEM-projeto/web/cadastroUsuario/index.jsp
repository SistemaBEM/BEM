<%-- 
    Document   : 404
    Created on : 26/10/2017, 20:51:19
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
              <a class="nav-link" href="../about.jsp">Sobre Nós</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../contact2.jsp">Contate um Profissional</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../contact.jsp">Fale Conosco</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="../singin.jsp">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    
        <!-- Page Content -->
    <div class="container">
      <!-- Page Heading/Breadcrumbs -->    
        <div class="jumbotron title-page">
        <h2 class="display-8">Olá, queremos te ajudar a ficar <a class="navbar-brand bem_logo" href="#">bem</a> =) Então cadastre-se!</h2>
        <br/>
        <ol class="breadcrumb">Seu cadastro será necessário para poder avaliar os profissionais que estão juntos conosco nessa missão =D</ol>
        
            <br/>
            <ol <c:if test="${message != null}"> class="breadcrumb errorOlColor" </c:if> >${message}</ol>
            <c:remove var="message" scope="session" /> 
            <br/><br/>
            
            <form class="form" id="contact-form" data-toggle="validator" role="form" method="post" action="../ServletCadastroUsuario">
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
                                <div class="help-block with-errors data-pattern-error">Campo Obrigatório</div>
                            </div>
                        </div>
                    </div>
                </div>
                <br/>
                <div class="control-group form-group has-feedback">
                    <div class="row">
                        <div class="col-6 col-md-2">
                            <label class="control-label">E-mail</label>
                        </div>
                    <div class="col-6 col-md-7">
                        <input type="email" class="form-control" name="EMail"
                               data-error="Por favor, informe seu e-mail corretamente" required/>
                        <div class="help-block with-errors">Campo obrigatório</div>
                        <span class="" aria-hidden="true"></span>
                    </div>
                    </div>
                </div>
                <br/>
                <div class="control-group form-group">
                    <div class="row">
                        <div class="col-6 col-md-2">
                            <label class="control-label">Telefone</label>
                        </div>
                    <div class="col-6 col-md-7">
                        <input type="text" class="form-control" name="contato" 
                               data-error="Somente números" pattern="^[0-9]{1,}$" required/>
                                <div class="help-block with-errors">Campo obrigatório</div>
                                <span class="" aria-hidden="true"></span>
                    </div>
                    </div>
                </div>
                
                <br/>
                <div class="row">
                    <div class="col-6 col-md-8">
                    <hr width="80%">
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
                                 maxlength="20" data-match="#senha" data-match-error="As senha são diferentes"
                                 required/>
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
                            <input type="submit" class="form-control btn btn-primary btn-cadPsic" name="enviar" value="Quero me cadastrar!"/>
                        </div>
                    </div>
                </div>
            </form>
        </div> <!-- /.jumbotron -->
    </div> <!-- /.container -->
    <!-- Footer -->
    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">Atividade de Desenvolvimento Web</p>
            <p class="m-0 text-center text-white">Maryanne Alice - 20162014040029</p>
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