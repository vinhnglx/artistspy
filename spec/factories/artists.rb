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

FactoryGirl.define do
  sequence(:spotify_id) { |n| "abcdef #{n}"}
  factory :artist do
    spotify_id
    external_urls "https://open.spotify.com/artist/123456"
    genres ["detroit hiphop", "hiphop", "rap"]
    href "https://api.spotify.com/v1/artists/123456"
    name "Eminem"
  end
end
