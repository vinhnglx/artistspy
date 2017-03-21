require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  it 'returns a default artist value' do
    get :index

    jdata = JSON.parse(response.body)
    expect(response).to have_http_status(:ok)
    ["external_urls", "genres", "href", "name", "spotify_id"].each do |field|
      expect(jdata.keys.include?(field)).to be_truthy
    end
  end
end
