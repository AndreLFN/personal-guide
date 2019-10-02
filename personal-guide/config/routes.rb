Rails.application.routes.draw do
  get 'planos', to: 'planos#index'
  resources :alunos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'alunos#index'
end
