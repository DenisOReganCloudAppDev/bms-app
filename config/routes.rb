Rails.application.routes.draw do
  resources :managers
  resources :engineers
  resources :tenants
  resources :buildings
  
  root 'home#index'
  get 'home/Database'
  
  #get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
