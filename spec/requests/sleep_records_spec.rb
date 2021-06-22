require 'rails_helper'

RSpec.describe 'Sleep Records API', type: :request do
  let!(:user) { create(:user) }
  let!(:sleep_records) { create_list(:sleep_record, 10, user_id: user.id) }

  describe 'GET sleep_records' do
    before { get "/users/#{user.id}/sleep_records" }

    it 'returns sleep records' do
      expect(JSON.parse(response.body)).not_to be_empty
      expect(JSON.parse(response.body).size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
