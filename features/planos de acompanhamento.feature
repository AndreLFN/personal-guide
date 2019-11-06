Feature: Planos de acompanhamento

Como usuário do personal guide

gostaria que meus alunos tivessem acesso aos planos de acompanhamento que ofereço,

a fim de ajudá-los a tomar uma melhor decisão.

	Scenario outline: Adicionar novo plano de acompanhamento

 

      	Given estou na tela de ‘planos de acompanhamento’

		when pressiono ‘adicionar’

		and preencho os campos de ‘nome do plano’, ‘descrição’ e ‘preço’

		then  devo ver a lista de ‘planos de acompanhamento’ com o plano adicionado

 

	Scenario outline: Remover plano de acompanhamento

 

      	Given estou na tela de ‘planos de acompanhamento’

		when pressiono ‘remover’ na linha do plano que desejo descartar

		then  devo ver a lista de ‘planos de acompanhamento’ sem o plano removido

 

	Scenario outline: adicionar planos com o mesmo nome

      	

      	Given estou na tela de ‘planos de acompanhamento’

      	when pressiono ‘adicionar’

		and preencho os campos de ‘nome do plano’ com um nome já existente

		then devo visualizar uma mensagem de ‘plano já existente’

