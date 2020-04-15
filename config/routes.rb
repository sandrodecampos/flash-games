Rails.application.routes.draw do

  # get '/products', to: 'products#index'
  # get '/products/:id', to: 'products#show', id /\d+/
  resources :products, only: [:show, :index, :home] do
    collection do
      get 'search_results'
    end
    collection do
      get 'search'
    end
  end

  resources :pages, only: :show

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'about', to: 'pages#about', as: 'about'
  get 'contact', to: 'pages#contact', as: 'contact'
  root 'products#home'
end
