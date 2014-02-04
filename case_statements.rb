class MountainBike

  def initialize(type_code)
    @type_code = type_code
    @base_price = 500
    @front_suspension_price = 95
    @rear_suspension_price = 50
  end

  def price
    case @type_code
    when :rigid
      @base_price
    when :front_suspension
      @base_price + @front_suspension_price
    when :full_suspension
      @base_price + @front_suspension_price + @rear_suspension_price
    end
  end

end

puts MountainBike.new(:rigid).price
puts MountainBike.new(:front_suspension).price
puts MountainBike.new(:full_suspension).price
