require 'rails_helper'

RSpec.describe 'Followers API', type: :request do
  let!(:users) { create_list(:user, 5) }
  let!(:user)  { create(:user) }
  let!(:other_user) { create(:user) }
  let(:current_user) { { user: user.id } }

  describe 'POST follow' do
    before { post "/users/#{other_user.id}/follow", params: current_user }

    it 'returns status code 201' do
      expect(response).to have_http_status(201)
    end
  end

  describe 'DELETE unfollow' do
    before { delete "/users/#{other_user.id}/unfollow", params: current_user }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end

  describe 'GET followee_records' do
    before do
      users.each do |followee|
        user.follow(followee)
        create(:sleep_record, user_id: followee.id)
      end
      get "/users/#{user.id}/followee_records"
    end

    it 'returns sleep records' do
      expect(JSON.parse(response.body)).not_to be_empty
      expect(JSON.parse(response.body).size).to eq(5)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
