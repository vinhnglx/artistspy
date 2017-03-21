require 'rails/application_controller'

class HomeController < Rails::ApplicationController
  def index
    searchable = SearchableService.new(endpoint: '/v1/search?type=artist', limit: params[:limit], query: 'ed sheeran')
    artists_service = ArtistService.new(searchable)
    render json: artists_service.transform.first
  end
end
