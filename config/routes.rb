Rails.application.routes.draw do

 root "users#index"
 resources :saloons
 resources :users

 get '/login', to: 'sessions#new'
 get '/logout', to: 'sessions#destroy'
 resources :sessions, only: [:new, :create, :destroy]

 resources :saloons do
   member do
     get "like", to: "saloons#upvote"
   end
 end


end
