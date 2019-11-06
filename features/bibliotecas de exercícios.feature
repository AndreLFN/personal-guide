Feature: Biblioteca sobre execução de um exercício?

Como usuário do personal guide

gostaria de inserir/remover instruções sobre os exercícios que indico para meus alunos

para sanar dúvidas deles.

	
	Scenario: adicionar exercício para instruir o aluno

 

    	Given Estou na página "biblioteca de exercícios"

      	And Pressiona a opção "adicionar"

		When quando eu preencher a campo de 'nome do exercício' e 'descrição do exercício'

		Then eu devo ver na tela 'biblioteca de exercícios' os exercícios existentes juntamente com o adicionado

 

 

	Scenario: remover exercício

      	Given Estou na página 'biblioteca de exercícios'

      	When Pressiona a opção 'remover'

		Then eu devo ver na tela 'biblioteca de exercícios' sem o exercício removido 

