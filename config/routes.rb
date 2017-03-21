Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :artists, only: :index
      resources :favourites, only: :create
    end
  end

  # Api index
  get '/api/v1', to: 'application#api_index'

  # Root url
  root "home#index"

  # Routes to handle input wrong API endpoints
  get '*path', to: 'application#routing_error'
end
