require 'rails_helper'

RSpec.describe "Request: Api index", type: :request do
  it "returns the JSON with API endpoints" do
    get '/api/v1'
    jdata = JSON.parse(response.body)
    expect(jdata['artists_url']).to eq "/api/v1/artists?{name}"
    expect(jdata['favourite_artist_url']).to eq "/api/v1/favourites/{external_urls,genres,href,spotify_id,name}"
  end
end
