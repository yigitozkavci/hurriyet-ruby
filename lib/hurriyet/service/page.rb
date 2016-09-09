require 'hurriyet/service/base'
module Hurriyet
  module Service
    class Page < Base
      include ApiOperation::List
      include ApiOperation::Show

      def endpoint
        'pages'
      end
    end
  end
end
