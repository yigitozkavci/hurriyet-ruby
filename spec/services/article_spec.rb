require 'spec_helper'
require 'hurriyet/service/article'

module Hurriyet
  module Service
    describe Article do
      it_behaves_like 'list includer'
      it_behaves_like 'show includer'
    end
  end
end
