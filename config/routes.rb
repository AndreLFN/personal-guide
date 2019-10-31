Rails.application.routes.draw do
  get 'alunos/index'
  post 'alunos/create'
  get 'alunos/show/:id', to: 'alunos#show'
  delete 'alunos/destroy/:id', to: 'alunos#destroy'

  root 'homepage#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get '*request', to: 'homepage#index'  # Reroutes all the other routes to react
end

