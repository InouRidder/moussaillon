Rails.application.routes.draw do

  # PUBLIC ROUTES

  root to: 'pages#home'

  get '/contact' => 'pages#contact'

  get '/home' => 'pages#home'

  get '/about' => 'pages#about'

  get '/show' => 'products#show'

  get '/collection' => 'products#index'

  resources :products, only: [:show, :index]

  resources :scenes, only: [:show, :index]

  # ADMIN ROUTES

  devise_for :users

  namespace :admin do

    resources :scenes
    resources :products
    resource :dashboard, only: [:show]

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
