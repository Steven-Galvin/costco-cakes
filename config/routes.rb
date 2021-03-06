Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: 'pages#home'

  get 'home' => 'pages#home'
  get 'all_orders' => 'pages#all_orders'
  get 'orders' => 'pages#orders'

  resources :cake_orders
end
