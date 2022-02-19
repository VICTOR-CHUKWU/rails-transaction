Rails.application.routes.draw do
  root "groups#index"
  devise_for :users
  resources :operations
  resources :groups
  resources :users
  get '/home', to: "users#show"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
