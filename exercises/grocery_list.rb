class Item
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "#{name}: #{price_as_currency}"
  end

  def price_as_currency
    "$#{price/100.0}"
  end
end

class NullItem < Item

  def initialize
    super(name, price)
  end

  def price
    0
  end

  def name
    'Unknown item'
  end
end

class GroceryList

  attr_reader :items

  def initialize(items)
    @items = populate_items(items)
  end

  def add(item)
    @items << item
  end

  def to_s
    [].tap do |a|
      items.each { |item| a << item.to_s }
    end.join("\n")
  end

  def total_cost
    # TODO: It would be better to use a Money object here
    items.collect(&:price).inject(:+) / 100.0
  end

  private

  def populate_items(items)
    Array(items).collect { |item| item || NullItem.new }
  end

end
