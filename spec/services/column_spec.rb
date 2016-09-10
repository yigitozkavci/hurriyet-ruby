require 'spec_helper'
require 'hurriyet/service/column'

module Hurriyet
  module Service
    describe Column do
      it_behaves_like 'list includer'
      it_behaves_like 'show includer'
    end
  end
end
