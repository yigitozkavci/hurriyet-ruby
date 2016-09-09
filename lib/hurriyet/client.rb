require 'hurriyet/service/article'
require 'hurriyet/service/column'
require 'hurriyet/service/news_photo_gallery'
require 'hurriyet/service/page'
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

    def news_photo_galleries
      Service::NewsPhotoGallery.new self
    end

    def pages
      Service::Page.new self
    end
  end
end
