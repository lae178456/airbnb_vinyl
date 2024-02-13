Rails.application.routes.draw do

  root 'static_pages#home'

  # Vinyl routes
  get '/vinyls', to: 'vinyls#index'
  get '/vinyls/:id', to: 'vinyls#show', as: 'vinyl'
  post '/vinyls/:id/bookings', to: 'bookings#create', as: 'vinyl_bookings'
  get '/vinyls/mine', to: 'vinyls#mine', as: 'my_vinyls'
  delete '/vinyls/:id', to: 'vinyls#destroy'
  get '/vinyls/:id/edit', to: 'vinyls#edit', as: 'edit_vinyl'
  patch '/vinyls/:id', to: 'vinyls#update'
  get '/vinyls/new', to: 'vinyls#new'
  post '/vinyls', to: 'vinyls#create'

  # Reviews routes
  post '/reviews', to: 'reviews#create', as: 'reviews'
  delete '/reviews/:id', to: 'reviews#destroy'


  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end


# Vinyl routes
# resources :vinyls do
# resources :bookings, only: [:create]
#end
#get '/vinyls/mine', to: 'vinyls#mine', as: 'my_vinyls'

# Bookings routes
#post '/vinyls/:id/bookings', to: 'bookings#create', as: 'vinyl_bookings'

# Reviews routes
#resources :reviews, only: [:create, :destroy]