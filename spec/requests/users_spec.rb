require 'rails_helper'

RSpec.describe 'Users API', type: :request do
  let!(:users) { create_list(:user, 5) }

  describe 'GET users' do
    before { get '/users' }

    it 'returns users' do
      expect(JSON.parse(response.body)).not_to be_empty
      expect(JSON.parse(response.body).size).to eq(5)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST users' do
    let(:valid_user_params) { { name: 'Test User' } }

    before { post '/users', params: valid_user_params }

    it 'returns user' do
      expect(JSON.parse(response.body)).not_to be_empty
    end

    it 'returns status code 201' do
      expect(response).to have_http_status(201)
    end
  end
end
