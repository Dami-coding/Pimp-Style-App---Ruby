Rails.application.routes.draw do


 
  root "users#index"


  resources :saloons
  resources :users

 
  
  resources :sessions
  
end
