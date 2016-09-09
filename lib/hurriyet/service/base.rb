require 'faraday'
require 'json'
module Hurriyet
  module Service
    class Base
      attr_accessor :client

      def initialize(client)
        @client = client
        @conn = Faraday.new(url: 'https://api.hurriyet.com.tr', headers: { apikey: @client.apikey })
      end      

      def execute(endpoint)
        JSON.parse(@conn.get("/#{version}/#{endpoint}").body)
      end

      def version
        'v1'
      end
    end
  end
end
