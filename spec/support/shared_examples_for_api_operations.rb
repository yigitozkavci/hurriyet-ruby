require 'spec_helper'
require 'service_helper'
require 'hurriyet/client'

shared_examples_for 'service' do
  let(:client) { Hurriyet::Client.new 'some_api_key' }
  subject { described_class.new client }

  it { is_expected.to respond_to(:endpoint) }
end

shared_examples_for 'list includer' do
  let(:client) { Hurriyet::Client.new 'some_api_key' }
  subject { described_class.new client }

  it { is_expected.to include_operation('list') }
end

shared_examples_for 'show includer' do
  let(:client) { Hurriyet::Client.new 'some_api_key' }
  subject { described_class.new client }

  it { is_expected.to include_operation('show') }
end
