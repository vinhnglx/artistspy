class SearchableService
  include HTTParty
  base_uri ENV['api_uri'] || 'api.spotify.com'

  DEFAULT_ENDPOINT  = ENV['artist_endpoint']
  DEFAULT_LIMIT     = ENV['api_limit']
  DEFAULT_QUERY     = ENV['artist_api_query']

  # Public: Create constructor
  #
  # Parameters
  #
  #   api_url - the api endpoint
  #   limit   - a maximum number of items in the response
  #   query   - the search query's keywords
  #
  # Example
  #
  #   SearchableService.new('/v1/search?type=artist', 40, 'we are the world')
  #
  # Returns nothing
  def initialize(endpoint = DEFAULT_ENDPOINT, limit = DEFAULT_LIMIT, query = DEFAULT_QUERY)
    @endpoint = endpoint
    @options = { query: { limit: limit, query: query } }
  end

  # Public: Connect to Spotify Server
  #
  # Example
  #
  #   searchable = SearchableService.new
  #   searchable.connect
  #
  # Returns an object with response from Spotify
  def connect
    response = self.class.get(@endpoint, @options)
  end
end
