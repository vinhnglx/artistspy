module Api
  module V1
    class FavouritesController < ApplicationController
      def create
        artist = Artist.new(artist_params)
        if artist.save
          render json: artist, status: :created
        else
          render_error(artist, :unprocessable_entity)
        end
      end

      private

      # Private: Permit artist parameters
      #
      # Returns a Hash of artist's parameters
      def artist_params
        ActiveModelSerializers::Deserialization.jsonapi_parse(params)
      end
    end
  end
end
