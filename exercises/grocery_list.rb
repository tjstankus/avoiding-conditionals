class Item
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class GroceryList

  attr_reader :items

  def initialize(items)
    @items = items || []
  end

  def add(item)
    @items << item
  end

  def total_cost
    # TODO: It would be better to use a Money object here
    items.collect(&:price).inject(:+) / 100.0
  end

end
