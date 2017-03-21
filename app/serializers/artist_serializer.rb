class ArtistSerializer < ActiveModel::Serializer
  attributes :spotify_id, :name, :href, :genres, :external_urls
end
