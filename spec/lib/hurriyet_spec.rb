require 'spec_helper'
require 'hurriyet/version'

describe Hurriyet::VERSION do
  it { is_expected.to match(/\d+\.\d+\.\d+/) }
end
