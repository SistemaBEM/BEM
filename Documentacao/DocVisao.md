# Documento de visão
# BEM
## 1. Introdução
### 1.1 Resumo

Este documento tem como objetivo descrever as funcionalidades e restrições do Sistema BEM, sistema criado durante o Projeto de Desenvolvimento de Software (PDS) na etapa Web no curso de Tecnologia em Análise e Desenvolvimento de Sistemas (TADS).<br/>

O sistema BEM tem como objetivo encaminhar adequadamente pessoas que suspeitam ter algum tipo de transtorno mental, inicialmente depressão, estresse e ansiedade.

    
### 1.2 Escopo

Esta visão aplica-se ao sistema BEM, que descreve o encaminhamento do usuário para um profissional adequado através do preenchimento de um questionário interativo; os métodos de cadastros no sistema; as informações de consultas com profissionais, bem como suas confirmações e por fim a interação do usuário com a página, que visa conscientizar e trabalhar melhor os aspectos de transtornos mentais como estresse, ansiedade e depressão.
    
## 2. Requisitos

### 2.1 Requisitos Funcionais
        
| Cod. | Nome | Descrição | Categoria |
| -------- | -------- | -------- | -------- |
| F01 | Avaliação do Profissional | O sistema deve permitir ao usuário a avaliação do profissional | Evidente |
| F02 | Encaminhamento do usuário | O sistema deve permitir ao usuário receber um encaminhamento para um profissional adequado | Evidente |
| F03 | Disponibilização de informações sobre os transtornos | O sistema deve permitir ao usuário visualizar informações sobre os transtornos psicológicos abordados pelo sistema | Evidente |
| F04 | Disponibilização de informações sobre o profissional | O sistema deve permitir ao usuário visualizar informações sobre o profissional escolhido | Evidente |
| F05 | Disponibilização de estatísticas sobre os transtornos | O sistema deve disponibilizar ao usuário estatísticas sobre os transtornos psicológicos abordados | Evidente |


### 2.2 Requisitos não funcionais

| Cod. | Nome | Descrição | Categoria |
| -------- | -------- | -------- | -------- |
| NF01 | Avaliação | Avaliação feita através da contabilização de estrelas deixadas pelo usuário, logado no sistema, no espaço de cada profissional | Desejável|
| NF02 | Encaminhamento | Encaminhamento dado através da implementação de um questionário online baseado na DASS 21 | Obrigatório|
| NF03 | Informações sobre os transtornos | Disponibilização de informações dos transtornos em páginas voltadas para a conscientização do público em geral | Desejável|
| NF04 | Disponibilização de informações profissionais | Fornece informações do profissional, baseado em seu CRP, em um local específico após a realização do questionário |	Obrigatório|
| NF05 | Estatísticas |	Disponibilização de estatísticas baseadas em pesquisas regidas por dados endossados por profissionais da área | Desejável|


### 2.3 Tabela de Referência - Requisitos
        
| ... | NF01 | NF02 | NF03 | NF04 | NF05 |
| :----------- | :------: | ------------: | :----------- | :------: | ------------: |
| F01 | X |   |   |   |   |
| F02 |   | X |   |   |   |
| F03 |   |   | X |   |   |
| F04 |   |   |   | X |   |
| F05 |   |   | X |   | X |

### 2.4 Diagrama Geral de Casos de Uso

![Casos de Uso](https://raw.githubusercontent.com/MaryanneAlice/PDS/master/documentacao/useCase-BEM-1.jpg)
    
### 2.5. Casos de Uso

| Cod. | Caso de Uso | Descrição | Classificação |
| -------- | -------- | -------- | -------- |
| [UC01](doc/requisitos/cdu/cdu01)  | Avaliar e confirmar cadastro do Psicólogo | O administrador recebe a solicitação de cadastro do psicólogo e através da autenticidade do CRP ele valida o cadastro do profissional. | Primário |
| [UC02](doc/requisitos/cdu/cdu02) | Fazer Cadastro Psicólogo | O Psicólogo através do preenchimento dos dados necessários efetua o cadastro no site, dependendo diretamente da validação do CRP feita pelo administrador. | Primário |
| [UC03](doc/requisitos/cdu/cdu03) | Fazer Cadastro Usuário | O Usuário através do preenchimento dos dados necessários efetua o cadastro no site. | Secundário |
| [UC04](doc/requisitos/cdu/cdu04) | Responder Questionário Interativo | Através de um sistema de gameficação, o usuário responde ao um questionário baseado na tabela DASS21 e por meio do questionário, o usuário recebe um encaminhamento para um profissional adequado, mais próximo e mais em conta. | Primário |
| [UC05](doc/requisitos/cdu/cdu05) | Avaliar Profissional | Estando logado o usuário avalia o Psicólogo mandando um apply para o mesmo confirmar se o usuário em questão recebeu serviços dele. | Secundário |
| [UC06](doc/requisitos/cdu/cdu06)  | Confirmar o Apply | Caso algum usuário tenha enviado um Apply ao Psicólogo, o profissional pode aceitar (Caso o paciente tenha sido consultado pelo mesmo) ou Recusar (Avaliações de má fé). | Secundário |
| [UC07](doc/requisitos/cdu/cdu07) | Ler informações fornecidas no sistema | O usuário terá livre acesso a textos informativos presentes no site. | Primário |
| [UC08](doc/requisitos/cdu/cdu08) | Fazer Login Psicólogo | O psicólogo pode efetuar o login para alterar seus dados ou confirmar/rejeitar apply de clientes. | Secundário |
| [UC09](doc/requisitos/cdu/cdu09) | Fazer Login Usuário | O usuário pode efetuar o login para dar apply para avaliação do psicólogo. | Secundário |
| [UC10](doc/requisitos/cdu/cdu10) | Alterar dados do psicólogo | O psicólogo pode alterar seus dados estando logado no sistema. | Secundário |
| [UC11](doc/requisitos/cdu/cdu11) | Fazer Login Administrador | O administrador loga no sistema para avaliar o cadastro dos Psicólogos. | Primário |
| [UC12](doc/requisitos/cdu/cdu12) | Escolher modalidade do questionário | O usuário escolhe entre realizar um questionário interativo ou responder um formulário. | Primário |



### 2.6. Tabela de Referência - Casos de uso & Requisitos

| | NF01 | NF02 | NF03 | NF04 | NF05 | F01 | F02 | F03 | F04 | F05 |
| -------- | -------- | -------- | -------- | -------- | -------- | -------- | -------- | -------- | -------- | -------- |
| UC01 | | | | X | | | | | X | |
| UC02 | X | X | | | | X | X | | | |
| UC03 | | X | | | | | X | | | |
| UC04 | X | | | | | X | | | | |
| UC05 | X | | | | | X | | | | |
| UC06 | X | | | | | X | | | | |
| UC07 | | | X | X | X | | | X | X | X |
| UC08 | X | | | | | X | | | | |
| UC09 | X | | | | | X | | | | |
| UC10 | | | | X | | | | | X | |
| UC11 | | | X | X | X | | | X | X | X |

### 2.7. Atores

| Ator | Descrição |
| -------- | -------- |
| Administrador | A função do Administrador é validar o Cadastro do Psicólogo conforme o CRP. |
| Psicólogo | Possui o nome no sistema para a consulta dos clientes. |
| Usuário | Realiza o teste do sistema gameficado e pode avaliar o Psicólogo. | 

    
## 3. Clientes

O sistema BEM, tem como enfoque pessoas que suspeitam ter algum tipo de transtorno psicológico, de início depressão, estresse ou ansiedade.
