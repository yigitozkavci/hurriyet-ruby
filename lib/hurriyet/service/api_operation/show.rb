module Hurriyet
  module ApiOperation
    module Show
      def single(id, options = {})
        execute "#{endpoint}/#{id}", options
      end 
    end
  end
end

