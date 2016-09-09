require 'hurriyet/service/base'
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

