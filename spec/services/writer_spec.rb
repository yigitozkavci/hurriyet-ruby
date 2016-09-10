require 'spec_helper'
require 'hurriyet/service/writer'

module Hurriyet
  module Service
    describe Writer do
      it_behaves_like 'service'
      it_behaves_like 'list includer'
      it_behaves_like 'show includer'
    end
  end
end
