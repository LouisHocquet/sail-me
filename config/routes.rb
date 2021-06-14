Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :boats do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show, :index, :edit, :update, :delete]
  get '/my_boats', to: "boats#my_boats", as: :my_boats
  resources :reviews, only: [:new, :create, :delete]
end
