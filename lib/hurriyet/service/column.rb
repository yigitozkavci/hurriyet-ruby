require 'hurriyet/service/base'
require 'hurriyet/service/api_operation/list'
require 'hurriyet/service/api_operation/show'
module Hurriyet
  module Service
    class Column < Base
      include ApiOperation::List
      include ApiOperation::Show

      def endpoint
        'columns'
      end
    end
  end
end

