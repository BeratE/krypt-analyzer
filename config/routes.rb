Rails.application.routes.draw do
  resources :langs

  root 'application#index'
end
