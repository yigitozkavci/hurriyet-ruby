require 'hurriyet/service/base'
require 'hurriyet/service/api_operation/list'
require 'hurriyet/service/api_operation/show'
module Hurriyet
  module Service
    class Article < Base
      attr_accessor :client
      include ApiOperation::List
      include ApiOperation::Show

      def endpoint
        'articles'
      end
    end
  end
end
