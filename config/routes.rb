Rails.application.routes.draw do

  root to: 'pages#home'

  get '/contact' => 'pages#contact'

  get '/home' => 'pages#home'

  get '/about' => 'pages#about'

  get '/show' => 'products#show'

  get '/collection' => 'products#index'

  # ADMIN ROUTES

  get '/admin' => 'admin#index'

  resources :admin_scenes

  resources :admin_products

  resources :products

  resources :scenes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
