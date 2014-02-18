require 'rspec'
require_relative '../grocery_list'

describe GroceryList do

  context 'when initialized with nil' do
    it 'adds a new item' do
      groceries = GroceryList.new(nil)
      groceries.add('milk')
      expect(groceries.items).to include('milk')
    end
  end

  describe '.initialize' do
    it 'initializes with list of items' do
      item = double('item')
      groceries = GroceryList.new([item])
      expect(groceries.items).to include(item)
    end
  end

end
