#!/usr/bin/ruby

class Gareth
  attr_accessor :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end

  def addTwoNoValidation(other)
    Gareth.new(@x + other.x, @y + other.y)
  end

  # strict checking to make sure other is an instance of class Gareth
  def addTwoStrict(other)
    raise TypeError, "Gareth instance expected" unless other.is_a? Gareth
    Gareth.new(@x + other.x, @y + other.y)
  end

  # duck typing to see if it walks and talks like a duck
  def addTwoNotSoStrict(other)
    raise TypeError, "Expected x and y params on other" unless
      other.respond_to? :x and other.respond_to? :y
    Gareth.new(@x + other.x, @y + other.y)
  end

  # really loosy goosey, just handle any erorr tha may come in
  def addTwoLoose(other)
    Gareth.new(@x + other.x, @y + other.y)
  rescue
    raise TypeError, "Could not add two that are not so strict"
  end
end

a = Gareth.new(10, 20)
c = Gareth.new(10, 20)

dummyClass = Struct.new(:x, :y)
dummyObj = dummyClass.new(10, 20)

#a.addTwoNoValidation(20)
#a.addTwoStrict(dummyObj)
a.addTwoNotSoStrict(dummyObj)
#a.addTwoLoose('Something')

# this is the strct version working
b = a.addTwoStrict(c)
puts b.inspect
