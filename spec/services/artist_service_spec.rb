require 'rails_helper'

RSpec.describe ArtistService do
  let!(:searchable) { SearchableService.new('/v1/search?type=artist', 50, 'eminem') }
  let!(:artists_service) { ArtistService.new(searchable) }

  it 'returns the formatted artists collection' do
    fields = [:external_urls, :genres, :href, :name, :spotify_id]
    artists = artists_service.transform

    expect(artists.size).to eq 17
    fields.each do |field|
      expect(artists.map(&:keys).uniq.flatten.include? field).to be_truthy
    end
  end
end
