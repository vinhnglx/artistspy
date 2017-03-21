require 'rails_helper'

RSpec.describe Api::V1::ArtistsController, type: :controller do
  context 'GET index' do
    describe "valid artist's name" do
      it 'returns with JSON body containing artists' do
        get :index, params: { limit: 50, name: 'Ed Sheeran' }
        jdata = JSON.parse response.body
        expect(jdata.size).to eq 17
      end
    end

    describe "invalid artist's name" do
      it 'raises an error when we do not passing the name parameter' do
        expect { get :index, params: { limit: 50 } }.to raise_error(ArgumentError, "Missing query")
      end
    end
  end
end
