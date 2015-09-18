#!/usr/bin/ruby

# as an example we want to create two methods that both instanciate the new method
# but we may want to do some manipulation with the supplied args for one initialization
# and leave the other alone
# This is how we do it

class Thing
  attr_accessor :a,:b

  def initialize(a,b)
    @a,@b = a,b
  end

  # make factory method new private (can only be called via
  # single or double)
  private_class_method :new

  # this can also be self.single
  def Thing.single(a,b)
    new(a,b)
  end

  def Thing.double(a,b)
    new(a * 2, b * 2)
  end
end

a = Thing.double(1, 1)
puts 'using double with value 1 , 1'
puts "a: #{a.a}"
puts "b: #{a.b}"

b = Thing.single(1, 1)
puts 'using single with value 1 , 1'
puts "a: #{b.a}"
puts "b: #{b.b}"
