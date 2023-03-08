Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show, :create, :update, :delete]
  resources :character_cards
  root 'pages#home'
  get 'pages/home'
  get 'pages/extrainfo'
  get 'chat', to: 'messages#index'

 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
