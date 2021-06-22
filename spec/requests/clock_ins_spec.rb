require 'rails_helper'

RSpec.describe 'Users API', type: :request do
  let!(:user) { create(:user) }
  let!(:clock) { create(:clock, user_id: user.id) }

  describe 'POST clock_in' do
    before { post "/users/#{user.id}/clock_in" }

    it 'returns clock in' do
      expect(JSON.parse(response.body)).not_to be_empty
      expect(JSON.parse(response.body)['clock_in']).to include('Woke up at:')
    end

    it 'returns status code 201' do
      expect(response).to have_http_status(201)
    end
  end
end
