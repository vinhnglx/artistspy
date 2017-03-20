# == Schema Information
#
# Table name: artists
#
#  id            :integer          not null, primary key
#  spotify_id    :string
#  external_urls :string
#  genres        :text             default("{}"), is an Array
#  href          :string
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'rails_helper'

RSpec.describe Artist, type: :model do
  context 'attributes' do
    it 'is valid with valid attributes' do
      expect(build(:artist)).to be_valid
    end
  end

  context 'validations' do
    let(:artist) { build(:artist) }

    it 'is invalid without spotify_id' do
      artist.spotify_id = nil
      expect(artist).to be_invalid
    end

    it 'is invalid if there is already one record has same spotify_id attributes' do
      create(:artist, spotify_id: 'acd123')
      artist.spotify_id = 'abc123'
      expect(artist).to be_invalid
    end

    it 'is invalid without name' do
      artist.name = nil
      expect(artist).to be_invalid
    end

    it 'is invalid without href' do
      artist.href = nil
      expect(artist).to be_invalid
    end

    it 'is invalid if there is already one record has same href attributes' do
      create(:artist, href: 'https://api.spotify.com/v1/artists/abc123')
      artist.href = 'https://api.spotify.com/v1/artists/abc123'
      expect(artist).to be_invalid
    end

    it 'is invalid without external_urls' do
      artist.external_urls = nil
      expect(artist).to be_invalid
    end

    it 'is invalid if there is already one record has same external_urls' do
      create(:artist, external_urls: 'https://open.spotify.com/artist/123456')
      artist.external_urls = 'https://open.spotify.com/artist/123456'
      expect(artist).to be_invalid
    end
  end
end
