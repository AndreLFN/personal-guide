Rails.application.routes.draw do
  root 'homepage#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  # Reroutes all the other routes to react
  get '*request', to: 'homepage#index'
end

