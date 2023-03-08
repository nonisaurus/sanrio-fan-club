Rails.application.routes.draw do
  devise_for :users

  resources :users, only: [:index, :show, :create, :update, :delete]

  get 'chat', to: 'messages#chat'

  get 'characters', to:'character_cards#cards'
  get 'characters/:id', to:'character_cards#show'
  get 'character/new', to: 'character_cards#new', as: 'new_character_card'
  get 'character', to: 'character_cards#create'
  get 'character/:id/edit', to: 'character_cards#edit'
  patch 'character/:id', to: 'character_cards#update'
  delete 'character/:id', to: 'character_cards#destroy'
  

  get 'pages/home'
  get 'pages/extrainfo'

  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
