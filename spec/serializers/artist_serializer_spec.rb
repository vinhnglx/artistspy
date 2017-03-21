require 'rails_helper'

RSpec.describe ArtistSerializer do
  let!(:artist) { create(:artist) }
  let!(:serializer) { ArtistSerializer.new(artist) }
  let!(:serialization) { ActiveModelSerializers::Adapter.create(serializer) }

  subject { JSON.parse(serialization.to_json) }

  it "should response expected Artist attributes" do
    jdata = subject['data']['attributes']
    artist_attributes = ['externalUrls', 'name', 'href', 'genres', 'spotifyId']
    artist_attributes.each do |i|
      expect(jdata.key?(i)).to be_truthy
    end
  end
end
