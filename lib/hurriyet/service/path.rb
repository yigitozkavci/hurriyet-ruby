require 'hurriyet/service/base'
module Hurriyet
  module Service
    class Path < Base
      include ApiOperation::List
      include ApiOperation::Show

      def endpoint
        'paths'
      end
    end
  end
end
