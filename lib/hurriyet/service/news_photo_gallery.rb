require 'hurriyet/service/base'
module Hurriyet
  module Service
    class NewsPhotoGallery < Base
      include ApiOperation::List
      include ApiOperation::Show

      def endpoint
        'newsphotogalleries'
      end
    end
  end
end
