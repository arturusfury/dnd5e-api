require 'rails_helper'

RSpec.describe 'Language', type: :request do
  let(:load_languages) do
    FactoryGirl.create :common
    FactoryGirl.create :draconic
    FactoryGirl.create :dwarven
    FactoryGirl.create :goblin
    FactoryGirl.create :infernal
  end

  let(:parsed_response) { JSON.parse(response.body) }

  describe 'GET /v1/languages' do
    it 'returns an array of languages' do
      load_languages
      get '/v1/languages'

      expect(response.status).to eq(200)
      expect(parsed_response.map{|resp| resp['name']}).to eq(['Common', 'Draconic', 'Dwarven', 'Goblin', 'Infernal'])
      expect(parsed_response.length).to eq(5)
    end
  end

  # describe 'GET /v1/languages/:id' do
  #   it 'returns the correct object when searching by id' do
  #     load_languages
  #     get '/v1/languages/9'
  #
  #     expect(response.status).to eq(200)
  #     expect(parsed_response['name']).to eq('Draconic')
  #   end
  # end

  describe 'GET /v1/languages/:name' do
    it 'returns 404 response when no records are found' do
      load_languages
      get '/v1/languages/french'

      expect(response.status).to eq(404)
    end

    it 'returns the correct object with a 200 response' do
      dragon = FactoryGirl.create :dragonborn
      draconic = FactoryGirl.create :draconic
      dragon.languages << draconic

      get '/v1/languages/draconic'

      expect(response.status).to eq(200)
      expect(parsed_response['name']).to eq('Draconic')
      expect(parsed_response['native_speakers'].first['race']).to eq('Dragonborn')
    end
  end
end
