Rails.application.routes.draw do
  devise_for :users
  
  get 'pages/home'
  get 'pages/extrainfo'

  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
