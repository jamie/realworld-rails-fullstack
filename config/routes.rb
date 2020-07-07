Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'home#index', as: :home

  # Real World implementation note:
  # The Rails Way would be to have our routes be RESTful, like so:
  # resources :articles # includes editor actions
  # resources :profiles
  # resource :settings

  # get '/login'
  # get '/register'
  get '/settings', to: 'settings#edit'
  get '/editor', to: 'article#new'
  get '/editor/:id', to: 'article#edit'
  get '/article/:slug', to: 'article#show', as: :article
  get '/profile/:username', to: 'profile#show', as: :profile
  # get '/profile/:id/favorites', to: TODO

  devise_for :users
  # TODO: Set up some route aliases to match Conduit spec
  # get '/register', to: 'devise/registrations#new'
  # get '/login', to: 'devise/sessions#new'
end
