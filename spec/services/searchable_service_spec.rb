require 'rails_helper'

RSpec.describe SearchableService do
  let!(:searchable) { SearchableService.new('/v1/search?type=artist', 50, 'eminem') }

  it 'returns the JSON artists' do
    response = searchable.connect
    jdata = JSON.parse(response.body)
    expect(response.code).to eq 200
    expect(jdata).to be_an_instance_of(Hash)
  end
end
