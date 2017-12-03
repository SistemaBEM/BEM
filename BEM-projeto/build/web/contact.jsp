<%-- 
    Document   : contact
    Created on : 26/10/2017, 21:09:35
    Author     : Jhonatas Gabriel 
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
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
    <link href="css/auxiliar.css" rel="stylesheet">
    <link href="css/selected-css.css" rel="stylesheet">
    <link href="css/bootstrap-select.css" rel="stylesheet">
    
    <!--SCRIPT-->

    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.js"></script>
    <script src="js/bootstrap-select.js"></script>
    <script src="vendor/jquery/jquery.min.js"></script>

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand bem_logo" href="index.jsp">bem</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link link-nav" href="about.jsp">Sobre Nós</a>
            </li>
            <li class="nav-item ">
              <a class="nav-link" href="contact2.jsp">Contate um Profissional</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="contact.jsp">Fale Conosco</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="singin.jsp">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

        <!-- Page Content -->
    <div class="container">

          <!-- Page Heading/Breadcrumbs -->
          <h1 class="mt-4 mb-3">Fale Conosco</h1>

          <!-- Content Row -->
          <div class="row">
            <!-- Map Column -->
            <div class="col-lg-8 mb-4">
                <!-- Embedded Google Map -->
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4067427.1352436147!2d-38.42301316132733!3d-5.402220365148091!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7b04df549e8eaad%3A0xa92509ac1c4d9ec4!2sRio+Grande+do+Norte!5e0!3m2!1spt-BR!2sbr!4v1511999496330" width="100%" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
            <!-- Contact Details Column -->
            <div class="col-lg-4 mb-4">
              <h3>Encontre-nos</h3>
              <p>
                Sistema BEM
                <br>
              </p>
              <!--<p>
                <abbr title="Email">E-mail</abbr>: (123) 456-7890
              </p>-->
              <p>
                <abbr title="Facebook">Facebook</abbr>:
                <a href="https://www.facebook.com/sistemaBEM/">sistemaBEM
                </a>
              </p>
              <p>
                <abbr title="Hours">Horário de funcionamento</abbr>: 
                <br/> Segunda-feira a Sexta-feira: 8:00 até 18:00
              </p>
            </div>
        </div>
          <!-- /.row -->

        <br/><br/>
      
        <!-- Contact Form -->
        <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
        <div class="row">
            <div class="col-lg-8 mb-4">
                <h4>Tem algumas sugestão ou reclamação? <br/><br/> 
                    Fale conosco e nos ajuda a fazer o <a class="navbar-brand bem_logo" href="#">bem</a> !
                </h4> 
                
                <br/>
            <form class="form" name="sentMessage" id="contact-form" data-toggle="validator" role="form" method="post" action="#">
                    <div class=" control-group form-group has-feedback">
                        <div class="controls">
                            <div class="row">
                                <div class="col-6 col-md-2">
                                    <label class="control-label">Nome</label>
                                </div>
                                <div class="col-6 col-md-10">
                                    <input type="text" class="form-control" name="nome_completo"
                                           data-error="Somente letras" pattern="[a-zA-Z ]+" required/>
                                    <span class="" aria-hidden="true"></span>
                                    <div class="help-block with-errors data-pattern-error">Campo Obrigatório</div>
                                </div>
                            </div>
                        </div>
                    </div>
                  <br/>
                    <div class="control-group form-group">
                        <div class="row">
                            <div class="col-6 col-md-2">
                                <label class="control-label">Telefone</label>
                            </div>
                        <div class="col-6 col-md-10">
                            <input type="text" class="form-control" name="contato" 
                                   data-error="Somente números" pattern="^[0-9]{1,}$" required/>
                                    <div class="help-block with-errors">Campo obrigatório</div>
                                    <span class="" aria-hidden="true"></span>
                        </div>
                        </div>
                    </div>
                  <br/>
                    <div class="control-group form-group has-feedback">
                        <div class="row">
                            <div class="col-6 col-md-2">
                                <label class="control-label">E-mail</label>
                            </div>
                        <div class="col-6 col-md-10">
                            <input type="email" class="form-control" name="EMail"
                                   data-error="Por favor, informe seu e-mail corretamente" required/>
                            <div class="help-block with-errors">Campo obrigatório</div>
                            <span class="" aria-hidden="true"></span>
                        </div>
                        </div>
                    </div>
                  <br/>
                    <div class="control-group form-group has-feedback">
                        <div class="row">
                            <div class="col-6 col-md-2">
                                <label class="control-label">Mensagem</label>
                            </div>
                        <div class="col-6 col-md-10">
                            <textarea rows="10" cols="100" class="form-control" name="mensagem" 
                                      data-error="Por favor, insira sua mensagem"
                                      maxlength="999" style="resize:none" required></textarea>
                            <div class="help-block with-errors">Campo obrigatório</div>
                            <span class="" aria-hidden="true"></span>
                        </div>
                        </div>
                    </div>
                  <br/>
                  <br/><br/>     
                    <div class="control-group form-group">
                        <div class="row">
                            <div class="col-6 col-md-12">
                                <input type="submit" class="form-control btn btn-primary btn-cadPsic" name="enviar" value="Enviar Mensagem"/>
                            </div>
                        </div>
                    </div>
            </form>       

            </div>

        </div>
        <!-- /.row -->

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
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
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
    <script src="js/validator.min.js"></script>

  </body>

</html>
