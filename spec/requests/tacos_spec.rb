require 'rails_helper'

RSpec.describe 'Taco API', type: :request do
  # initialize test data 
  let!(:tacos) { create_list(:taco, 10) }
  let(:taco_id) { tacos.first.id }

  # Test suite for GET /tacos
  describe 'GET /tacos' do
    # make HTTP get request before each example
    before { get '/tacos' }

    it 'returns tacos' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /tacos/:id
  describe 'GET /tacos/:id' do
    before { get "/tacos/#{taco_id}" }

    context 'when the record exists' do
      it 'returns the taco' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(taco_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:taco_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Taco/)
      end
    end
  end
end