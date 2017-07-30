Rails.application.routes.draw do

  root to: 'pages#home'

  get '/contact' => 'pages#contact'

  get '/home' => 'pages#home'

  get '/about' => 'pages#about'

  get '/show' => 'products#show'

  get '/collection' => 'products#index'

  # ADMIN ROUTES

  get '/admin' => 'admin#index'

  get '/admin_products' => 'products#admin_index'

  get '/admin_scenes' => 'scenes#admin_index'

  get '/admin_show_product/:id' => 'products#show'

  resources :scenes do
    resources :products, only: [:new, :create, :destroy]
  end

  resources :products

  # get '/admin' => 'admin#admin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
