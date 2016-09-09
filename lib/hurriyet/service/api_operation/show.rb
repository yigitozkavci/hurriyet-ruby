module Hurriyet
  module ApiOperation
    module Show
      def single(id:)
        execute "#{endpoint}/#{id}"
      end 
    end
  end
end

