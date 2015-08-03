Rails.application.routes.draw do

 # post 'sessions/new'

  # get 'sign up', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'delete', to: 'sessions#destroy'
  root "users#index"

  resources :saloons
  resources :users
  resources :sessions
  
end
