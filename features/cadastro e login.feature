Feature: Cadastrar e logar novo Usuário

Como usuário do personal guide

gostaria de me cadastrar e logar no sistema

para poder utilizar os recursos do sistema.

      Scenario outline: Cadastrar novo usuário
      	
      	Given Estou na ‘tela de login’

      	when clico na opção de ‘cadastrar’ .’

      	then Eu deverá estar na ‘página de cadastro’

      	when Preencho o ‘campo email.’

      	and Preencho o ‘campo senha’

      	and Aciono o ‘botão cadastrar’

      	then Meu usuário deverá receber a resposta ‘cadastrado’

      	and Eu devo voltar para a ‘tela de login’

 

      Scenario outline: Cadastrar usuário existente

 
      	Given estou na ‘página de cadastro’

      	when preencho o ‘campo de email’ com ‘usuário já existente’

            then eu devo receber a  informação de ‘usuário já cadastrado’

            and devo permanecer na ‘página de cadastro’

 

      Scenario outline: Cadastrar novo usuário pelo facebook

      	

            Given Estou na ‘tela de login’

            When pressiono a opção ‘Sign in with Facebook’

            the eu devo ser direcionado para o ‘facebook’

            and depois que o login seja realizado com sucesso no facebook devo ir para a página principal do personal guide

 

      Scenario outline: Logar cliente inexistente

      	

            given Given Estou na ‘tela de login’

            when Preencho o ‘campo email’ com um email não cadastrado

      	and Preencho o ‘campo senha’

      	and Aciono o botão de ‘login’’

            then eu devo voltar para a tela de login com uma mensagem de ‘usuário inexistente’.

