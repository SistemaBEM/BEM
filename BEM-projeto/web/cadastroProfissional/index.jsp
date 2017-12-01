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
        <title>Projeto BEM</title>
    <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="../css/modern-business.css" rel="stylesheet">
    <link href="../css/auxiliar.css" rel="stylesheet">
    <link href="../css/selected-css.css" rel="stylesheet">
    <link href="../css/bootstrap-select.css" rel="stylesheet">
    
    <!--SCRIPT-->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.js"></script>
    <script src="../js/bootstrap-select.js"></script>
    <script src="../vendor/jquery/jquery.min.js"></script>
  </head>
    
  <body class="cadastroPage">
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
        <div class="title-page">
        <br/><br/>
        <h2 class="display-8">Olá, quer nos ajudar nessa missão de fazer o <a class="navbar-brand bem_logo" href="#">bem</a>? Então cadastre-se!</h2>
        <br/>
        <ol class="breadcrumb"> Seu cadastro será submetido a validação após conclusão.</ol>
        <br/><br/>
            <form class="form" id="contact-form" data-toggle="validator" role="form" method="post" action="../ServletCadastroProfissional">
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
                            <label class="control-label">C.R.P.</label>
                        </div>
                    <div class="col-6 col-md-7">
                        <input type="text" class="form-control" name="crp" placeholder="Insira somente números" maxlength="26"
                               data-error="Informe somente números" pattern="^[0-9]{1,}$" required/>
                        <span class="" aria-hidden="true"></span>
                        <div class="help-block with-errors">Campo Obrigatório</div>
                    </div>
                    </div>
                </div>
                <br/>
                
                <div class="control-group form-group has-feedback">
                    <div class="controls">
                        <div class="row">
                            <div class="col-6 col-md-2">
                              <label>Forma de Atendimento</label>
                            </div>
                            <div class="col-6 col-md-7" style="height: 100%;">
                              <div class="dropdown-menu open" role="combobox">
                                <ul>
                                    <li data-original-index="0" class="">
                                        <a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false">
                                            <span class="text">Privado</span>
                                            <span class="glyphicon glyphicon-ok check-mark"></span>
                                        </a>
                                    </li>
                                    <li data-original-index="1" class="">
                                        <a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false">
                                            <span class="text">Amil</span>
                                            <span class="glyphicon glyphicon-ok check-mark"></span>
                                        </a>
                                    </li>
                                    <li data-original-index="2" class="">
                                        <a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false">
                                            <span class="text">Unimed Natal</span>
                                            <span class="glyphicon glyphicon-ok check-mark"></span>
                                        </a>
                                    </li>
                                    <li data-original-index="3" class="">
                                        <a tabindex="0" class="" data-tokens="null" role="option" aria-disabled="false" aria-selected="false">
                                            <span class="text">Hapvida</span>
                                            <span class="glyphicon glyphicon-ok check-mark"></span>
                                        </a>
                                    </li>
                                </ul>
                                </div>
                                <select name="select_atendimento" class="selectpicker show-menu-arrow form-control" multiple="" 
                                        data-error="Campo obrigatório" required>                    
                                    <option value="privado">Privado</option>
                                    <option value="amil">Amil</option>
                                    <option value="unimed-natal">Unimed Natal</option>
                                    <option value="hapvida">Hapvida</option>
                                </select>
                                <span class="" aria-hidden="true"></span>
                                <div class="help-block with-errors">Campo obrigatório</div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <br/>
                <div class="control-group form-group">
                    <div class="row">
                        <div class="col-6 col-md-5">
                            <label class="control-label">Local de Atendimento</label>
                        </div>
                    </div>
                </div>
                <table width="100%">
                    <tr>
                        <td>
                        <div class="control-group form-group has-feedback">
                            <div class="row">
                                <div class="col-12 col-md-12">
                                    <div class="col-md-2">
                                        <label class="control-label">Rua</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" class="form-control" name="rua" required/>
                                        <span class="" aria-hidden="true"></span>
                                        <div class="help-block with-errors">Campo obrigatório</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </td>
                        <!---->
                        <td>
                        <div class="control-group form-group has-feedback">
                            <div class="row">
                                <div class="col-12 col-md-12">
                                    <div class="col-md-2">
                                        <label class="control-label">Número</label>
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" class="form-control" name="numero"/>
                                        <span class="" aria-hidden="true"></span>
                                        <div class="help-block with-errors"> &nbsp;</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </td>
                    </tr>
                </table>
                <table width="100%">
                    <tr>
                        <td>
                        <div class="control-group form-group has-feedback">
                            <div class="row">
                                <div class="col-6 col-md-12">
                                    <div class="col-md-2">
                                        <label class="control-label">Bairro</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" class="form-control" name="bairro" 
                                               pattern="^[_A-z0-9 ]{1, }$" required/>
                                        <div class="help-block with-errors">Campo obrigatório</div>
                                        <span class="" aria-hidden="true"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </td>
                        <td>    
                        <div class="control-group form-group has-feedback">
                            <div class="row">
                                <div class="col-6 col-md-12">
                                    <div class="col-md-2">
                                        <label class="control-label">Cidade</label>
                                    </div>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="cidade" 
                                               pattern="^[_A-z0-9 ]{1, }$" required/>
                                        <div class="help-block with-errors">Campo obrigatório</div>
                                        <span class="" aria-hidden="true"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </td>
                    </tr>
                </table>
                <br/>
                <div class="control-group form-group">
                    <div class="row">
                        <div class="col-6 col-md-2">
                            <label class="control-label">Telefone Comercial</label>
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
                <div class="control-group form-group has-feedback">
                    <div class="row">
                        <div class="col-6 col-md-2">
                            <label class="control-label">Telefone Opcional</label>
                        </div>
                    <div class="col-6 col-md-7">
                        <input type="text" class="form-control" name="contatoOp" 
                               data-error="Somente números" pattern="^[0-9]{1,}$" />
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
                    <div class="col-6 col-md-7">
                        <input type="email" class="form-control" name="EMail"
                               data-error="Por favor, informe seu e-mail corretamente" required/>
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
                                 data-match="#senha" data-match-error="As senha são diferentes"
                                 maxlength="20" required/>
                                <div class="help-block with-errors">Campo obrigatório</div>
                                <span class="" aria-hidden="true"></span>
                            </div>
                        </div>
                    </div>
                </div>
                
                <br/><br/>     
                
                <div class="control-group form-group has-feedback">
                    <div class="row">
                        <div class="col-6 col-md-12">
                            <input type="checkbox" id="verificacaoInfo" name="verificacaoInfo" value="sim"
                                   data-error="Campo obrigatório" required>  Declaro que as informações prestadas 
                            são verdadeiras, assumindo inteira responsabilidade pelas mesmas. 
                            <div class="help-block with-errors">Campo obrigatório</div>	
                        </div>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="row">
                        <div class="col-6 col-md-9">
                            <input type="submit" class="form-control btn btn-primary btn-cadPsic" name="enviar" value="Quero ajudar!"/>
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