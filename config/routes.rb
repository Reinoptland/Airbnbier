Rails.application.routes.draw do
  resources :bookings
  resources :rooms
  root "rooms#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/allrooms" => "rooms#list_all_rooms"
  get "/allrooms/priceasc" => "rooms#list_all_rooms_price_asc"
end
