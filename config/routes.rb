Rails.application.routes.draw do
  
  get 'menu/index'

  get 'contacto/index'

  get 'productos/index'

  resources :details
  resources :invoices
  resources :mat_prods
  resources :deliveries
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
