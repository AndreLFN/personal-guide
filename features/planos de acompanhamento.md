Feature: Planos de acompanhamento

 Como usuário do personal guide

gostaria de inserir/remover instruções sobre os exercícios que indico para meus alunos

para sanar dúvidas deles.

Scenario: Adicionar novo plano de acompanhamento

 

      	Given estou na tela de ‘planos de acompanhamento’

when pressiono ‘adicionar’

and preencho os campos de ‘nome do plano’, ‘descrição’ e ‘preço’

then  devo ver a lista de ‘planos de acompanhamento’ com o plano adicionado

 

Scenário: Remover plano de acompanhamento

 

      	Given estou na tela de ‘planos de acompanhamento’

when pressiono ‘remover’ na linha do plano que desejo descartar

then  devo ver a lista de ‘planos de acompanhamento’ sem o plano removido

 

Scenário: adicionar planos com o mesmo nome

      	

      	Given estou na tela de ‘planos de acompanhamento’

      	when pressiono ‘adicionar 

and preencho os campos de ‘nome do plano’ com um nome já existente

then devo visualizar uma mensagem de ‘plano já existente’

