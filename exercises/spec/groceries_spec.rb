require 'rspec'
require_relative '../groceries'

describe Groceries do

  context 'when initialized with nil' do
    it 'adds a new item to the list' do
      groceries = Groceries.new(nil)
      groceries.add('milk')
      expect(groceries.list).to include('milk')
    end
  end
end
