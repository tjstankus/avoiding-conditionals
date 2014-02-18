require 'rspec'
require_relative '../grocery_list'

describe GroceryList do

  context 'when initialized with nil' do
    it 'adds a new item' do
      groceries = GroceryList.new(nil)
      item = double('item', name: 'milk')
      groceries.add(item)
      expect(groceries.items).to include(item)
    end
  end

  it 'calculates total cost' do
    milk = double('item', name: 'milk', price: 399)
    bread = double('item', name: 'milk', price: 199)
    groceries = GroceryList.new([milk, bread])
    expect(groceries.total_cost).to eq(5.98)
  end

  context 'given a nil item' do
    it 'calculates total cost using 0 for nils' do
      pending 'Fix me without using a conditional nil check'
      milk = double('item', name: 'milk', price: 399)
      groceries = GroceryList.new([milk, nil])
      expect(groceries.total_cost).to eq(3.99)
    end
  end

end
