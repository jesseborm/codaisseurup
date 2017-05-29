Rails.application.routes.draw do
  root 'pages#home'

  devise_for :users
  resources :users, only: [:show]
  # nested route: Include an event ID when creating a registration
  resources :events do
    resources :registrations, only: [:create]
  end
  resources :profiles, only: [:new, :create, :edit, :update]
  get "about", to: "pages#about"
  get "terms", to: "pages#terms"
  resources :photos
end
