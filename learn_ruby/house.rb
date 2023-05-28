class House
  @@count = 0

  def self.count
    @@count
  end

  def self.report_count_of_instances
    "There are #{count} of instances of the #{name} class"
  end

  attr_accessor :color, :style

  def initialize(color, style)
    @color = color # this is an instance variable
    @style = style
    @@count += 1
  end

  def details
    "This house is a #{color} #{style} house instance"
  end
end

puts House.count
house = House.new("blue", "craftsman")
puts house.color
puts house.style
puts House.count

puts House.report_count_of_instances
puts house.details