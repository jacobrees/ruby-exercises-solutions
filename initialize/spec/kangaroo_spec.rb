require 'rspec'
require_relative '../lib/kangaroo'

RSpec.describe Kangaroo do
  it 'exists' do
    kerrie = Kangaroo.new('Kerrie', %w[Kat Kyle])

    expect(kerrie).to be_an_instance_of(Kangaroo)
  end

  it 'has children' do
    kerrie = Kangaroo.new('Kerrie', %w[Kat Kyle])

    expect(kerrie.children).to eq(%w[Kat Kyle])
  end
end
