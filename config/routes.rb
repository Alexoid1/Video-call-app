Rails.application.routes.draw do
  
  devise_for :users, controllers: { registrations: "registrations" }
  
  devise_scope :user do
  get 'login', to: 'devise/sessions#new'
  get 'register', to: 'devise/registrations#new'
  delete 'logout', to: 'devise/sessions#destroy'
  
  end
  
  resources :rooms
  resources :messages
  post 'online', to: 'home#online'
  post 'offline', to: 'home#offline'
  
  root to: 'home#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
