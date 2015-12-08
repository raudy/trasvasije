Rails.application.routes.draw do
  
  devise_for :users

  resources :categories
  resources :customers
  resources :materials
  resources :products

  get 'quienes/index'  
  get 'welcome/index'
  #get "inicio", to: "welcome#index"

  root 'welcome#index'

end
