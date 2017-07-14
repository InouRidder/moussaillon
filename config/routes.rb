Rails.application.routes.draw do

  root to: 'pages#home'

  get 'contact' => 'pages#contact'

  get 'home' => 'pages#home'

  get 'about' => 'pages#about'

  get 'show' => 'products#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
