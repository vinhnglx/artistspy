Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :artists, only: :index
      resources :favourites, only: :create
    end
  end

  # Routes to handle input wrong API endpoints
  get '*path', to: 'application#routing_error'

  root "home#index"
end
