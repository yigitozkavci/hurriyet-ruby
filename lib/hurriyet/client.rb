require 'hurriyet/service/article'
require 'hurriyet/service/column'
module Hurriyet
  class Client
    attr_accessor :apikey
    def initialize(apikey)
      @apikey = apikey
    end

    def articles
      Service::Article.new self
    end

    def columns
      Service::Column.new self
    end
  end
end
