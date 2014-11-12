Rails.application.routes.draw do
  devise_for :users
  root to: 'visitors#index'
  resources :users, only: 'index'
  resources :images, only: [:destroy, :create, :new] do
    member do
      post :trash, :main_page
    end
  end
end
