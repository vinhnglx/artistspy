require 'rails_helper'

RSpec.describe "Request: Favourite an artist API", type: :request do
  context 'favourite an artist' do
    before do
      @data = '{ "data": { "type": "artists", "attributes": {
        "external_urls": "https://open.spotify.com/artist/7dGJo4pcD2V6oG8kP0tJRR",
        "genres": ["hiphop", "rap"],
        "href": "https://api.spotify.com/v1/artists/7dGJo4pcD2V6oG8kP0tJRR",
        "spotify_id": "7dGJo4pcD2V6oG8kP0tJRR",
        "name": "Eminem" } } }'
    end

    it 'returns http status created' do
      headers = { "CONTENT_TYPE" => "application/vnd.api+json" }
      post '/api/v1/favourites', params: @data, headers: headers
      expect(response).to have_http_status(:created)
      expect(response.content_type).to eq 'application/vnd.api+json'
    end
  end
end
