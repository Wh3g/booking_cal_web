Rails.application.routes.draw do
  devise_for :users
  root "bookings#index"

  resources :bookings
  
end
