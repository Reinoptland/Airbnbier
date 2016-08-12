Rails.application.routes.draw do
  devise_for :users
  resources :bookings, except: [:index, :show, :edit]
  resources :rooms, except: [:index]
  root "rooms#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/allrooms" => "rooms#list_all_rooms" , as: :all_rooms
  get "/rooms" => "rooms#list_all_rooms"
  get "/allrooms/priceasc" => "rooms#list_all_rooms_price_asc"
  get "/allrooms/pricedesc" => "rooms#list_all_rooms_price_desc"
  get 'user_bookings' => 'bookings#user', as: :user_bookings
  get 'user_rooms/' => 'rooms#user', as: :user_rooms

  get "/amsterdam" => "location#amsterdam_rooms"
  get "/utrecht" => "location#utrecht_rooms"
  get "/denhaag" => "location#denhaag_rooms"
  get "/rotterdam" => "location#rotterdam_rooms"
  get "/eindhoven" => "location#eindhoven_rooms"
end
