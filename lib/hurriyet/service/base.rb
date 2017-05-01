require 'faraday'
require 'json'
require 'hurriyet/service/api_operation/list'
require 'hurriyet/service/api_operation/show'
module Hurriyet
  module Service
    class Base
      attr_accessor :client
      ALLOWED_PARAMETERS = %w(filter select top).map(&:to_sym).freeze
      def initialize(client)
        @client = client
        @conn = Faraday.new url: 'https://api.hurriyet.com.tr',
                            headers: { apikey: @client.apikey }
      end

      def execute(endpoint, options = {})
        @options  = options
        @endpoint = endpoint
        make_call
      end

      def make_call
        resp = @conn.get(url)
        JSON.parse(resp.body)
      end

      def url
        "/#{version}/#{@endpoint}#{param_string}"
      end

      def param_string
        string = ''
        @options.each_with_index do |(key, value), index|
          raise unless allowed?(key)
          prefix = index.zero? ? '?' : '&'
          string << "#{prefix}$#{key}=#{value}"
        end
        string
      end

      def allowed?(key)
        ALLOWED_PARAMETERS.include? key
      end

      def version
        'v1'
      end
    end
  end
end
