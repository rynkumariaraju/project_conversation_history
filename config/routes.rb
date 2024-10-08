Rails.application.routes.draw do
 
  resources :users, only: [:new, :create, :index]

  resources :sessions, only: [:new, :create, :destroy]

  resources :projects do
    resources :comments, only: [:create]
    patch :change_status, on: :member
  end
  

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root 'projects#index'
end
