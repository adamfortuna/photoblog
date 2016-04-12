Rails.application.routes.draw do
  resources :pages
  resources :blogs
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  get '', to: 'blogs#show', constraints: { subdomain: /.+/ }

  root to: "home#index"


  devise_for :users, path: 'users', controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }

  get '/about', to: 'home#about', as: 'about'
  get '/features', to: 'home#features', as: 'features'
  get '/pricing', to: 'home#pricing', as: 'pricing'


end
