module Api
  module V1
    class ArtistsController < ApplicationController
      def index
        searchable = SearchableService.new(endpoint: '/v1/search?type=artist', limit: params[:limit], query: params[:name])
        artists_service = ArtistService.new(searchable)
        render json: artists_service.transform
      end
    end
  end
end
