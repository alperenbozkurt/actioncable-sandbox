Rails.application.routes.draw do
  devise_for :users
  
  root to: 'chatrooms#index'
  resources :chatrooms do 
    resource :chatroom_users
    resources :messages
  end
end
