module Hurriyet
  module ApiOperation
    module List
      def all(options = {})
        execute endpoint, options
      end 
    end
  end
end
