require 'rails_helper'

RSpec.describe "Request: Artists API", type: :request do
  context 'get artists' do
    it 'returns http status success' do
      get '/api/v1/artists', params: { name: 'eminem' }
      expect(response.content_type).to eq 'application/vnd.api+json'
      expect(response).to have_http_status(:success)
    end
  end
end
