Rails.application.routes.draw do
  resources :sessions
  resources :users
  resources :shopping_lists
  resources :vendors
  resources :stores
  resources :locations
  resources :descriptors
  resources :categories
  resources :products
  resources :discount_cards
  resources :line_items
  resources :receipts
  root to: 'dashboard#index'
  get '/devlist', to: 'devlist#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
