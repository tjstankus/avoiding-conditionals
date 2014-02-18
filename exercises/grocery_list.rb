class GroceryList

  attr_reader :items

  def initialize(items)
    # TODO: Refactor to remove the conditional
    @items = items.nil? ? [] : items
  end

  def add(item)
    @items << item
  end

end
