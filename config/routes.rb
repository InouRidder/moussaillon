Rails.application.routes.draw do

  # PUBLIC ROUTES

  root to: 'pages#home'

  # gem high voltage to use a helper method for static pages

  get '/contact' => 'pages#contact'

  get '/home' => 'pages#home'

  get '/about' => 'pages#about'


  get '/collection' => 'products#index'


  resources :products, only: [:show]

  resources :scenes, only: [:show]

  # ADMIN ROUTES

  # delete '/users/sign_out' => 'devise/sessions#destroy'

  get '/admin' => 'admin/dashboards#show' # I added this route because I kept typing it.

  devise_for :users


  namespace :admin do

    resources :scenes
    resources :products
    resource :dashboard, only: [:show]

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
