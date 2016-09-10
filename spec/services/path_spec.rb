require 'spec_helper'
require 'hurriyet/service/path'

module Hurriyet
  module Service
    describe Path do
      it_behaves_like 'list includer'
      it_behaves_like 'show includer'
    end
  end
end
