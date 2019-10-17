Feature: modificar lista de alunos

 Como usuário do personal guide

gostaria de adicionar nome , CPF e idade de cada aluno que dou aula

para me auxiliar no gerenciamento dos alunos.** **

Scenário: Adicionar um novo aluno no personal guide

 

      	Given Estou na página de ‘lista de alunos’

      	when Acesso o campo de ‘adicionar’

and Preencho os campos de ‘nome’,’altura’, ‘peso’ e ‘objetivo’.

Then Eu deveria ver a ‘lista de alunos’ juntamente com o aluno que adicionei no seu fim.

 

Scenário: remover um aluno no personal guide

 

      	Given Estou na página de ‘lista de alunos’

      	when Acesso o campo de ‘remover’ na linha do aluno

Then Eu deveria ver uma tabela com uma lista de aluno sem o aluno que selecionei.’

 

Scenário: Atualizar dados do aluno na lista

 

      	Given Estou na página de ‘lista de alunos’

      	when Acesso o campo de ‘atualizar’ na linha do aluno

and altero os campos de ‘nome’,’altura’, ‘peso’ ou ‘objetivo’.

Then Eu deveria ver a ‘lista de alunos’ juntamente com o aluno que alterei.

