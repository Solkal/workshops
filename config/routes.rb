Rails.application.routes.draw do
  devise_for :users
  root to: 'visitors#index'
  resources :users, only: 'index'
  resources :images, only: [:create, :new]
end
