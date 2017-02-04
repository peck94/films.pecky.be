Rails.application.routes.draw do
  resources :films
  get 'main/index'

  root 'main#index'
end
