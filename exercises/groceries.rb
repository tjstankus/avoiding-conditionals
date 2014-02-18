class Groceries

  attr_reader :list

  def initialize(list)
    # TODO: Refactor to remove the conditional
    @list = list.nil? ? [] : list
  end

  def add(item)
    @list << item
  end

end
