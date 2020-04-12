Rails.application.routes.draw do
  resources :products, only: [:index, :show]
  resources :pages, only: :show
  # get '/products', to: 'products#index'
  # get '/products/:id', to: 'products#show', id /\d/

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'about', to: 'pages#about', as: 'about'
  get 'contact', to: 'pages#contact', as: 'contact'
  root to: 'products#index'
end
