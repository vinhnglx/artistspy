require 'rails_helper'

RSpec.describe SearchableService do
  it 'returns the JSON artists' do
    searchable = SearchableService.new(endpoint: '/v1/search?type=artist', limit: 50, query: 'eminem')
    response = searchable.connect
    jdata = JSON.parse(response.body)

    expect(response.code).to eq 200
    expect(jdata).to be_an_instance_of(Hash)
  end

  it 'raises an error when missing query parameter' do
    expect { SearchableService.new }.to raise_error(ArgumentError, "Missing query")
  end
end
