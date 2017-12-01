<%-- 
    Document   : 404
    Created on : 26/10/2017, 20:51:19
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
        <title>CDU08-Login_Psicologo</title>
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
            <h3 align="center" class="display-8">Olá, esqueceu a senha?
                Não tem problema, mude-a =) <br/> 
                E nos ajude a ajudar!</h3>

            <br/><br/>
        
        <form class=" form form-signin" data-toggle="validator" role="form" method="post" action="../ServletMudarSenha">
            <div class="control-group form-group has-feedback">
                    <div class="row">
                        <div class="col-6 col-md-12">
                            <label class="control-label">C.R.P.</label>
                        </div>
                    <div class="col-6 col-md-11">
                        <input type="text" class="form-control" name="crp" placeholder="Insira somente números" 
                               maxlength="26" pattern="^[0-9]{1,}$" 
                               required autofocus/>
                        <span class="" aria-hidden="true"></span>
                        <div class="help-block with-errors">Campo Obrigatório</div>
                    </div>
                    </div>
                </div>                
                <div class=" control-group form-group has-feedback">
                    <div class="controls">
                        <div class="row">
                            <div class="col-6 col-md-12">
                                <label class="control-label">Senha</label>
                            </div>
                            <div class="col-6 col-md-11">
                                <input type="password" class="form-control" id="senha" name="senha" 
                                       data-minlength="6" data-maxlength="20"  maxlength="20" required/>
                                <div class="help-block with-errors data-min-error data-max-error">Campo obrigatório</div>
                                <span class="" aria-hidden="true"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class=" control-group form-group has-feedback">
                    <div class="controls">
                        <div class="row">
                            <div class="col-6 col-md-12">
                                <label class="control-label">Confirmação de Senha</label>
                            </div>
                            <div class="col-6 col-md-11">
                                <input type="password" class="form-control" name="conf_senha"
                                       data-minlength="6" data-maxlength="20"  maxlength="20" 
                                 data-match="#senha" data-match-error="As senha são diferentes"
                                 required/>
                                <div class="help-block with-errors data-min-error data-max-error">Campo obrigatório</div>
                                <span class="" aria-hidden="true"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <br/>
                <div class="control-group form-group">
                    <div class="row">
                        <div class="col-6 col-md-11">
                            <input type="submit" class="form-control btn btn-primary btn-cadPsic" value="Mudar Senha"/>
                        </div>
                    </div>
                </div>
        </form>

        </div> <!-- /.jumbotron -->
    </div> <!-- /.container -->
    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Projeto BEM 2017</p>
      </div>
      <!-- /.container -->
    </footer>
    
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