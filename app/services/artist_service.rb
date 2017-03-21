class ArtistService
  # Public: Create constructor
  #
  # Parameter
  #
  #   searchable_service - SearchableService object
  #
  # Example
  #
  #   ArtistService.new(Searchable.new)
  #
  # Returns nothing
  def initialize(searchable_service)
    @response = searchable_service.connect
  end

  # Public: Format the JSON data
  #
  # Example
  #
  #   artist_service = ArtistService.new(SearchableService.new('/v1/search?type=artist', 50, 'eminem'))
  #   artist_service.transform
  #   # => [{external_urls: "xxx", genres: xxx, href: "xxx", name: "xxx", spotify_id: "xxx"}, {...}]
  #
  # Returns formatted artists collection
  def transform
    jdata = JSON.parse(@response.body)['artists']['items']
    jdata.map do |obj|
      {
        external_urls: obj['external_urls']['spotify'],
        genres: obj['genres'],
        href: obj['href'],
        name: obj['name'],
        spotify_id: obj['id']
      }
    end
  end
end
