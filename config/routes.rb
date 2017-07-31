Rails.application.routes.draw do

  # PUBLIC ROUTES

  root to: 'pages#home'

  get '/contact' => 'pages#contact'

  get '/home' => 'pages#home'

  get '/about' => 'pages#about'

  get '/show' => 'products#show'

  get '/collection' => 'products#index'

  resources :products

  resources :scenes

  # ADMIN ROUTES

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get '/admin' => 'admin#index'

  resources :admin_scenes

  resources :admin_products

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
