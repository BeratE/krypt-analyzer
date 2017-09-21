Rails.application.routes.draw do
  resources :langs

  root 'application#index'

  get '/cipher/index', to: 'cipher#index', as: 'cipher'
  post '/cipher/create', to: 'cipher#create'
  post '/cipher/edit', to: 'cipher#edit'
end
