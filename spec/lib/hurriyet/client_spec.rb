require 'spec_helper'

module Hurriyet
  describe Client do
    let(:apikey) { 'some_api_key' }
    let(:client) { Client.new apikey }
    let(:services) do
      %w(articles columns news_photo_galleries pages paths writers)
    end

    it 'has api key' do
      expect(client).to respond_to(:apikey)
    end

    it 'returns services' do
      services.each do |r|
        expect(client).to respond_to(r)
        service = client.send(r)
        expect(service.class.name.split('::')[1]).to eq('Service')
      end
    end
  end
end
