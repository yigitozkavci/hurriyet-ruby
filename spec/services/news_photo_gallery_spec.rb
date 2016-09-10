require 'spec_helper'
require 'hurriyet/service/news_photo_gallery'

module Hurriyet
  module Service
    describe NewsPhotoGallery do
      it_behaves_like 'service'
      it_behaves_like 'list includer'
      it_behaves_like 'show includer'
    end
  end
end
