require 'rspec'
require_relative '../grocery_list'

describe GroceryList do

  describe "#add" do
    it "adds to an empty list" do
      groceries = GroceryList.new([])
      groceries.add('milk')
      expect(groceries.items).to eq(['milk'])
    end

    it "adds to a nil list" do
      groceries = GroceryList.new(nil)
      groceries.add('milk')
      expect(groceries.items).to eq(['milk'])
    end

    it "adds to a predefined list" do
      groceries = GroceryList.new(['butter'])
      groceries.add('milk')
      expect(groceries.items).to eq(['butter','milk'])
    end
  end

end
