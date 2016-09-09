require 'hurriyet/service/base'
require 'hurriyet/service/api_operation/list'
module Hurriyet
  module Service
    class Article < Base
      attr_accessor :client
      include ApiOperation::List

      def endpoint
        'articles'
      end
    end
  end
end
