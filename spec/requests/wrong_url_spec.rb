require 'rails_helper'

RSpec.describe "Wrong URLs", type: :request do
  it "returns the JSON error when we type wrong URL" do
    get '/a2039p28/adfasdlk'
    expect(response).to have_http_status(:bad_request)
  end
end
