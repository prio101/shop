Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'products#index'
  resources :products
  resources :users

  namespace :authentication do
    resources :sessions, only: [ :new, :create, :destroy ]
    get 'signup', to: 'sessions#signup'
    post 'register_user', to: 'sessions#register_user'
    delete "logout", to: "sessions#destroy"
  end


end
