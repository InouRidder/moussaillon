Rails.application.routes.draw do

  # PUBLIC ROUTES

  mount Attachinary::Engine => "/attachinary"

   root to: 'pages#home'

   # get '/instahome' => 'pages#instahome'
  # gem high voltage to use a helper method for static pages

  get '/contact' => 'pages#contact'

  get '/home' => 'pages#home'

  get '/about' => 'pages#about'


  get '/collection' => 'products#index'


  resources :products, only: [:show]

  resources :scenes, only: [:show]

  # ADMIN ROUTES


  get '/admin' => 'admin/dashboards#show' # I added this route because I kept typing it.

  devise_for :users

  namespace :admin do

    resources :scenes do
      member do
        delete :remove_product
        post :add_product
      end
    end

    resources :products
    resource :dashboard, only: [:show]

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
