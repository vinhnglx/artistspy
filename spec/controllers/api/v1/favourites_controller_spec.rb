require 'rails_helper'

RSpec.describe Api::V1::FavouritesController, type: :controller do
  context 'POST create' do
    describe 'favourite an artist' do
      before do
        @data = {
          data: {
            type: 'artist',
            attributes: {
              external_urls: 'https://open.spotify.com/artist/7dGJo4pcD2V6oG8kP0tJRR',
              genres: ['hiphop', 'rap'],
              href: "https://api.spotify.com/v1/artists/7dGJo4pcD2V6oG8kP0tJRR",
              spotify_id: '7dGJo4pcD2V6oG8kP0tJRR',
              name: 'Eminem'
            }
          }
        }
      end

      it 'returns an artist is stored' do
        @request.headers["Content-Type"] = 'application/vnd.api+json'
        post :create, params: @data
        expect(response).to have_http_status(:created)
      end

      it 'returns not_acceptable status when we forget passing the Content-Type header' do
        post :create, params: @data
        expect(response).to have_http_status(:not_acceptable)
      end
    end
  end
end
