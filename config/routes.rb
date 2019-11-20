Rails.application.routes.draw do

  root 'homepage#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get '*request', to: 'homepage#index', constraints: lambda { |request| not request.original_fullpath.start_with? '/api' }  # Reroutes all the other routes to react

  scope :api do
    resources :avaliacoes_fisicas
    resources :usuarios
    resources :exercicios
    resources :alunos
    resources :eventos
  
  end
end

