class GroceryList

  attr_reader :items

  def initialize(items)
    @items = Array(items)
  end

  def add(item)
    @items << item
  end

end
