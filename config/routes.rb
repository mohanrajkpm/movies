Rails.application.routes.draw do
  resources :bookings, :movies, :theaters, :tickets, :timings
  root to: 'bookings#index' 
  devise_for :users

  # devise_for :users, controllers: { registrations: "registrations"}
  
  # as :user do
  #   get '/' => 'devise/registrations#new'
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
