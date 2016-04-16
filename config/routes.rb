Rails.application.routes.draw do
  get ':id', to: 'public/blogs#index', constraints: { subdomain: /.+/ }

  root to: "home#index"

  devise_for :users, path: 'users', controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }

  get '/about', to: 'home#about', as: 'about'
  get '/features', to: 'home#features', as: 'features'
  get '/pricing', to: 'home#pricing', as: 'pricing'

  resources :pages_text_pages, controller: 'pages', type: 'Pages::TextPage', path: '/pages'
  resources :blogs do
    resources :pages
  end

  resources :templates

  get '/demos/:id', to: 'demos#show'
end
