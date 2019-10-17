Feature: Biblioteca sobre execução de um exercício 

Como usuário do personal guide

gostaria de inserir/remover instruções sobre os exercícios que indico para meus alunos

para sanar dúvidas deles.

Scenário: adicionar exercício para instruir o aluno

 

      	Given Estou na página ‘biblioteca de exercícios’

      	when Pressiona a opção ‘adicionar’

and quando eu preencher a campo de ‘nome do exercício’ e ‘descrição do exercício’

then eu devo ver na tela ‘biblioteca de exercícios‘ os exercícios existentes juntamente com o adicionado

 

 

Scenário: remover exercício

      	Given Estou na página ‘biblioteca de exercícios’

      	when Pressiona a opção ‘remover’

then eu devo ver na tela ‘biblioteca de exercícios‘ sem o exercício removido 

