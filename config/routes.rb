Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/show'
  resources :products, only: [:index, :show]
  # get '/products', to: 'products#index'
  # get '/products/:id', to: 'products#show', id /\d/

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'products#index'
end
