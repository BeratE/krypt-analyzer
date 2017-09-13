Rails.application.routes.draw do
  resources :langs

  root 'application#index'

  get '/cipher/index', to: 'cipher#index', as: 'cipher'
  post '/cipher/index', to: 'cipher#create', as: 'cipher_create' 
end
