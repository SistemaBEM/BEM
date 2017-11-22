<%-- 
    Document   : update
    Created on : 22/11/2017, 08:43:31
    Author     : Astrogilda Caroline
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
    

      <!-- Page Heading/Breadcrumbs -->
      <div class="jumbotron">
            <div class="row">
                <div class="col-xs-6 col-md-3">
                    <a href="#" class="thumbnail">
                        <img style="border-radius: 175px;" src="http://ketchcetera.com/images/content/heads/female.jpg" alt="...">
                    </a>
                </div>
                <div class="panel panel-default col-xs-6 col-md-6">
                    <div class="panel-body" style="background-color: #F0F8FF;">
                        <form class="form" id="contact-form" data-toggle="validator" role="form" method="post" action="../ServletEditarProfissional">
                            <div class=" control-group form-group has-feedback">
                                <div class="controls">
                                    <div class="row">
                                        <div class="col-6 col-md-2">
                                            <label class="control-label fonte">Nome Completo</label>
                                        </div>
                                        <div class="col-6 col-md-7">
                                            <input type="text" value="${psic.nome}" class="form-control" name="nome_completo"
                                       data-error="Somente letras" pattern="[a-zA-Z ]+"/>
                                            <span class="" aria-hidden="true"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="control-group form-group has-feedback">
                                <div class="row">
                                    <div class="col-md-2">
                                        <label class="control-label fonte">Rua</label>
                                    </div>
                                    <div class="col-6 col-md-7">
                                        <input type="text" value="${psic.rua}" class="form-control" name="rua"/>
                                        <span class="" aria-hidden="true"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="control-group form-group has-feedback">
                                <div class="row">
                                    <div class="col-md-2">
                                        <label class="control-label fonte">Numero</label>
                                    </div>
                                    <div class="col-md-7">
                                        <input type="text" value="${psic.numero}" class="form-control" name="numero"/>
                                        <span class="" aria-hidden="true"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="control-group form-group has-feedback">
                                <div class="row">
                                    <div class="col-md-2">
                                        <label class="control-label fonte">Bairro</label>
                                    </div>
                                    <div class="col-md-7">
                                        <input type="text" value="${psic.bairro}" class="form-control" name="bairro" 
                                               pattern="^[_A-z0-9 ]{1, }$"/>
                                        <span class="" aria-hidden="true"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="control-group form-group has-feedback">
                                <div class="row">
                                    <div class="col-md-2">
                                        <label class="control-label fonte">Cidade</label>
                                    </div>
                                    <div class="col-md-7">
                                        <input type="text" value="${psic.cidade}" class="form-control" name="cidade" 
                                               pattern="^[_A-z0-9 ]{1, }$"/>
                                        <span class="" aria-hidden="true"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="control-group form-group">
                                <div class="row">
                                    <div class="col-6 col-md-2">
                                        <label class="control-label fonte">Telefone Comercial</label>
                                    </div>
                                    <div class="col-6 col-md-7">
                                        <input type="text" value="${psic.contato}" class="form-control" name="contato" 
                               data-error="Somente números" pattern="^[0-9]{1,}$"/>
                                        <span class="" aria-hidden="true"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-md-3">
                                    <input type="submit" class="form-control btn btn-primary btn-cadPsic" value="Salvar Imagem">
                                </div>
                                <div class="col-xs-6 col-md-6">
                                    <input type="submit" class="form-control btn btn-primary btn-cadPsic" value="Salvar Dados">
                                </div>
                            </div>
                        </form>
                    </div>
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