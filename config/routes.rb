Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'

  resources :posts do 
    resources :comments
  end

   get 'p/:id', to: 'profiles#show',as: 'profile'

  post 'profiles/follow', to: 'profiles#follow'
  delete 'profiles/unfollow', to: 'profiles#unfollow'
   get "search", to: "profiles#search"
  
end
