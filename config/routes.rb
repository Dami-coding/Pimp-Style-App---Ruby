Rails.application.routes.draw do

  get 'style/new'

 root "home#new"
 resources :saloons
 resources :users

 get '/login', to: 'sessions#new'
 delete '/logout', to: 'sessions#destroy'
 resources :sessions, only: [:new, :create, :destroy]

 resources :saloons do
   member do
     get "like", to: "saloons#upvote"
   end
 end


end
