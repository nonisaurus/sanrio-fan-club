Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'registrations/registrations'
  }

  root 'pages#home'
  get 'pages/home'
  get 'pages/extrainfo'

  resources :users
  resources :character_cards

  resources :messages
  delete '/comments/:id', to: 'messages#destroy'

 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
