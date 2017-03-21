class SearchableService
  include HTTParty
  base_uri ENV['api_uri'] || 'api.spotify.com'

  DEFAULT_ENDPOINT  = ENV['artist_endpoint']
  DEFAULT_LIMIT     = ENV['api_limit']

  # Public: Create constructor
  #
  # Parameters
  #
  #   searches - A hash contains query and limit
  #
  # Example
  #
  #   SearchableService.new(limit: 40, query: 'tailor swift')
  #
  # Returns nothing
  def initialize(searches = {})
    raise ArgumentError, "Missing query" unless searches[:query]

    query = searches[:query]
    limit = searches[:limit] || DEFAULT_LIMIT
    @options = { query: { limit: limit, query: query } }
    @endpoint = searches[:endpoint] || DEFAULT_ENDPOINT
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
    self.class.get(@endpoint, @options)
  end
end
