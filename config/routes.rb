Rails.application.routes.draw do

  get '/barbers', to: 'barbers#new'

  get '/style',  to: 'style#new'

  get '/home',  to: 'home#new'

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
