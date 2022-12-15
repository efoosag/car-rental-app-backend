require 'rails_helper'

RSpec.describe 'Api::V1::Rentals', type: :request do
  describe 'GET /api/v1/rentals' do
    it 'works! (now write some real specs)' do
      get api_v1_rentals_path
      expect(response).to have_http_status(200)
    end
  end
end
