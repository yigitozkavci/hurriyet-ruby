require 'spec_helper'

shared_examples_for 'list includer' do
  it 'includes list operation' do
    expect(described_class).to include_operation('list')
  end
end

shared_examples_for 'show includer' do
  it 'includes show operation' do
    expect(described_class).to include_operation('show')
  end
end
