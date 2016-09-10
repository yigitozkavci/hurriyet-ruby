require 'hurriyet/service/base'
module Hurriyet
  module Service
    class Writer < Base
      include ApiOperation::List
      include ApiOperation::Show

      def endpoint
        'writers'
      end
    end
  end
end
