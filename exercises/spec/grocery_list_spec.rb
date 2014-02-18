require 'rspec'
require_relative '../grocery_list'

describe GroceryList do

  let(:milk) { double('item', name: 'milk', price: 399, to_s: "milk: $3.99") }
  let(:bread) { double('item', name: 'bread', price: 199, to_s: "bread: $1.99") }

  context 'when initialized with nil' do
    it 'adds a new item' do
      groceries = GroceryList.new(nil)
      groceries.add(milk)
      expect(groceries.items).to include(milk)
    end
  end

  context 'given multiple items' do

    before do
      @groceries = GroceryList.new([milk, bread])
    end

    it 'calculates total cost' do
      pending 'Implement without conditionals'
      expect(@groceries.total_cost).to eq(5.98)
    end

    it 'prints a list of items' do
      pending 'Implement without conditionals'
      expected = "milk: $3.99\nbread: $1.99"
      expect(@groceries.to_s).to eq(expected)
    end
  end

  context 'given an item and nil' do

    before do
      @groceries = GroceryList.new([milk, nil])
    end

    it 'calculates total cost using 0 for nils' do
      pending 'Implement without conditionals'
      expect(@groceries.total_cost).to eq(3.99)
    end

    it 'prints a list of items' do
      pending 'Implement without conditionals'
      expected = "milk: $3.99\nUnknown item: $0.0"
      expect(@groceries.to_s).to eq(expected)
    end
  end

end
