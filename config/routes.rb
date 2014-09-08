Rails.application.routes.draw do
  devise_for :users

  root :to => 'messages#new'
  resources :messages
end
