Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'

  get '/', to: 'home#index', as: 'home'
  get '/about', to: 'home#about', as: 'about'
  get '/features', to: 'home#features', as: 'features'
  get '/pricing', to: 'home#pricing', as: 'pricing'
end
