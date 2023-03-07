Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:index, :show, :create, :update, :delete]

  get 'characters', to:'character_cards#index'
  get 'pages/home'
  get 'pages/extrainfo'

  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
