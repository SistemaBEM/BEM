<%-- 
    Document   : game
    Created on : 26/10/2017, 21:17:50
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
    <link href="../css/bootstrap-select.css" rel="stylesheet">
    <link href="../css/selected-css.css" rel="stylesheet">

    <!--SCRIPT-->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.js"></script>
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../js/auxiliarbtndiv.js"></script>
  </head>

  <body>
    <%
        Integer r1 =(Integer)session.getAttribute("r1");
        if((r1 == null)){
           response.sendRedirect("formulario.jsp");
        }
    %>
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
              <a class="nav-link link-nav" href="../about.jsp">Sobre Nós</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../contact2.jsp">Contate um Profissional</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../contact.jsp">Fale Conosco</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../singin.jsp">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">
        <div class="jumbotron title-page">
        <h4 class="display-9">
            Por enquanto não há psicólogos cadastrados. Mas, queremos te falar algumas coisas...
        </h4>
        <br/>
                <div class="control-group form-group">
                    <div class="row">
                        <div class="col-6 col-md-12">
                            <button class="form-control btn btn-primary btn-cadPsic"  onclick="btndiv1()">As vezes não enxergamos o que temos... [continue lendo]</button>
                        </div>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="row">
                        <div class="col-6 col-md-12">
                            <button class="form-control btn btn-primary btn-cadPsic"  onclick="btndiv2()">Quando as coisas não vão bem... [continue lendo]</button>
                        </div>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="row">
                        <div class="col-6 col-md-12">
                            <button class="form-control btn btn-primary btn-cadPsic"  onclick="btndiv3()">Não importa aonde você parou... [continue lendo]</button>
                        </div>
                    </div>
                </div>
        <br/><br/>
        
        <div style="display: none;" id="texto1">
            <p> <b> As vezes não enxergamos o que temos, pelo simples fato de ser nosso... </b> 
            <br/>
            <p>Um dono de um pequeno comércio, amigo do grande poeta Olavo Bilac, abordou-o na rua:<br/>
            - Sr Bilac, estou precisando vender meu sítio, que o senhor tão bem conhece. Poderia redigir
            um anúncio para o jornal?<br/>
            Olavo Bilac apanhou um papel e escreveu:<br/>
            "Vende-se encantadora propriedade, onde cantam os pássaros ao amanhecer no extenso arvoredo,
            cortada por cristalinas e marejantes águas de um ribeirão. A casa, banhada pelo sol nascente, 
            oferece a sombra tranqüila das tardes na varanda".<br/>
            Meses depois, topa o poeta com o homem e pergunta-lhe se havia vendido o sítio.<br/>
            - Nem pense mais nisso! - disse o homem. Quando li o anúncio é que percebi a maravilha que eu 
            tinha.<br/><br/>
            Às vezes não descobrimos as coisas boas que temos conosco e vamos longe, atrás de miragens de 
            falsos tesouros. Valorize o que tens: as pessoas, a família, os amigos, os momentos... </p>                                             
            <spam>Desconheço o autor</spam> 
        </div>
        
        <div style="display: none;" id="texto2">
            <p>Não desista!</p> 
            <p>Quando as coisas não vão bem, como pode acontecer, <br/>
            Quando a estrada só vai para cima e nunca parece descer, <br/>
            Quando o dinheiro é pouco, e as dívidas como o mar, <br/>
            Quando se quer sorrir, mas só se pode chorar, <br/>
            Quando há cuidados que nos querem oprimir, <br/>
            É preciso descansar, mas nunca desistir! <br/>
            Com suas reviravoltas, a vida vai correndo <br/>
            E todos nós acabamos aprendendo <br/>
            Que muitos dos nossos erros poderiam ser evitados <br/> 
            Se tivéssemos persistido e não desanimado. <br/>
            Não desista então, mesmo que a coisa não caminhe, <br/> 
            Você pode vencer, com só mais uma forcinha! <br/>
            Sucesso não passa de fracasso às avessas, <br/>
            É o brilho que se vê ao redor das nuvens mais espessas. <br/> 
            Você nunca sabe se está prestes o seu alvo de atingir, <br/>
            Pode estar chegando, embora não o possa discernir; <br/>
            Portanto, continue lutando quando a dura luta chegar, <br/>
            Quando tudo parece pior é que você não pode desanimar! </p>
            <spam>(Autor Desconhecido Tradução J.W. Faustini, 1996) </spam>
        </div>
        
        <div style="display: none;" id="texto3">
            <p><b>Não importa aonde você parou... </b> em que momento da vida você cansou... o que
            importa é que sempre é possível e necessário "Recomeçar". </p>
            <p>Recomeçar é dar uma nova chance a si mesmo... é renovar as esperanças na
            vida e o mais importante... acreditar em você de novo.</p>
            Sofreu muito nesse período Foi aprendizado...</p>
            <p>Chorou muito Foi limpeza da alma...</p>
            <p>Ficou com raiva das pessoas Foi Para perdoá-las um dia...</p>
            <p>Sentiu-se só por diversas vezes É por que fechaste a porta para os anjos...</p>
            <p>Acreditou que tudo estava perdido Era o início de tua melhora...</p>
            <p>Pois é... agora é hora de reiniciar... de pensar na luz... de encontrar
            prazer nas coisas simples de novo.</p>
            <p>Que tal um novo emprego</p>
            <p>Uma nova profissão</p>
            <p>Um corte de cabelo arrojado... diferente</p>
            <p>Um novo curso... ou aquele velho desejo de aprender a pintar... desenhar...
            dominar o computador... ou qualquer outra coisa...</p>
            <p>Olha quanto desafio... quanta coisa nova nesse mundão de Deus te esperando.</p>
            <p>Ta se sentindo sozinho Besteira... tem tanta gente que você afastou com seu
            "período de isolamento"... tem tanta gente esperando apenas um sorriso teu
            para "chegar" perto de você.</p>
            <p>Quando nos trancamos na tristeza... nem nós mesmos nos suportamos...
            ficamos horríveis... o mal humor vai comendo nosso fígado... até a boca
            fica amarga.</p>
            <p>Recomeçar... hoje é um bom dia para começar novos desafios.</p>
            <p>Onde você quer chegar</p>
            <p>Ir alto... sonhe alto... queira o melhor do melhor... queira coisas boas
            para a vida... pensando assim trazemos pra nós aquilo que desejamos... se
            pensamos pequeno... coisas pequenas teremos... já se desejarmos fortemente
            o melhor e principalmente lutarmos pelo melhor... o melhor vai se instalar
            na nossa vida.</p>
            <p>E é hoje o dia da faxina mental... Joga fora tudo que te prende ao
            passado... ao mundinho de coisas tristes... fotos... peças de roupa...
            papel de bala... ingressos de cinema, bilhetes e viagens... e toda aquela
            tranqueira que guardamos quando nos julgamos apaixonados... jogue tudo
            fora... mas principalmente... esvazie seu coração... fique pronto para a
            vida... para um novo amor...</p>
            <p>Lembre-se somos apaixonáveis... somos sempre capazes de amar muitas e
            muitas vezes... afinal de contas...</p>
            <p>Nós somos o "Amor"...</p>



            <spam>Autor : Paulo Roberto Gaefke    
            do Livro " Decidi Ser Feliz "</spam>
        </div>
        
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
    <script src="../js/contact_me.js"></script>
    <script src="../js/bootstrap-select.js"></script>
    <script src="../js/validator.min.js"></script>
    <% r1 = null;%>
  </body>
</html>
