Rails.application.routes.draw do
  resources :films
  get 'main/index'
  get 'main/about'
  get '/search', to: 'search#index'
  get '/import/:id', to: 'films#import'

  root 'main#index'
end
