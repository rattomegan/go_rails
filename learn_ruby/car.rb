class Car
  @@count = 0 # this is a class variable

  def self.count # this is a class method
    @@count
  end

  def self.read_count # this is a class method
    "There are #{count} number of Car instances"
  end

  attr_accessor :color, :model # this is for an instance of the class

  def initialize(color, model) # this is to instantiate an instance
    @color = color
    @model = model
    @@count += 1
  end

end

car1 = Car.new("blue", "Ford")
p car1

p Car.read_count

car1.color = ("red")
p car1