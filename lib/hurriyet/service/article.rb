require 'hurriyet/service/base'
module Hurriyet
  module Service
    class Article < Base
      include ApiOperation::List
      include ApiOperation::Show

      def endpoint
        'articles'
      end
    end
  end
end
