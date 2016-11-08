Rails.application.routes.draw do

   root 'pages#index'
   # get 'message', to: 'messages#new', as: 'message'
   # post 'message', to: 'messages#create'
   resources :messages, only: [:new, :create]
   get 'messages/new'
end
