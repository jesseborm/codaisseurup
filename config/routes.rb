Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  resources :users, only: [:show]
  resources :events
  resources :profiles, only: [:new, :create, :edit, :update]
end
