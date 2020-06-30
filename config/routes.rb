Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'home#index'

  # Real World implementation note:
  # The Rails Way would be to have our routes be RESTful, like so:
  # resources :articles # includes editor actions
  # resources :profiles
  # resource :settings

  # Devise TODO
  # get '/login'
  # get '/register'
  get '/settings', to: 'settings#edit'
  get '/editor', to: 'article#new'
  get '/editor/:id', to: 'article#edit'
  get '/article/:id', to: 'article#show'
  get '/profile/:id', to: 'profile#show'
  # get '/profile/:id/favorites', to: TODO
end
