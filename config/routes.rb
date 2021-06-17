Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :boats do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show, :edit, :update, :delete]
  get '/my_boats', to: "boats#my_boats", as: :my_boats
  get '/booking/accept/:id', to: "bookings#accept", as: :accept
  get '/booking/reject/:id', to: "bookings#reject", as: :reject
  get '/my_bookings', to: "bookings#my_bookings"
  resources :reviews, only: [:new, :create, :delete]
end
