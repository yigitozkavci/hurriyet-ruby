require 'hurriyet/service/article'
module Hurriyet
  class Client
    attr_accessor :apikey
    def initialize(apikey)
      @apikey = apikey
    end

    def articles
      Service::Article.new self
    end
  end
end
