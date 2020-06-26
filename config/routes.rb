Rails.application.routes.draw do

  # Root:
  root 'chatroom#index'

  # Session:
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: [:create]

  # Messages:
  post 'message', to: 'messages#create'

end
