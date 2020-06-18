Rails.application.routes.draw do

  # Root:
  root 'chatroom#index'

  # Session:
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # Messages:
  post 'message', to: 'messages#create'

end
