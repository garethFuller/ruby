#!/usr/bin/ruby

# Parent class with
class Thing

  # new new getters and setters
  attr_accessor :name, :descr

  # this is called on new instansiation
  # Kinda works like a constructor,
  # i.e that = new thing(gareth, he is cool)
  def initialize(name, descr)
    @name = name
    @descr = descr
  end

end

# inheritance, new class treasure inherits from thing
class Treasure < Thing

  attr_accessor :value

  # calling super from constructor
  def initialize(name, descr, value)
    super(name, descr)
    # set the custom attr for this class
    @value = value
  end

end

puts '======== CLASS A ========'
a = Treasure.new('gareth', 'he rocks', 23);
puts a.name
puts a.descr
a.descr = 'he rocks some more'
puts a.descr

puts '======== CLASS B ========'
b = Treasure.new('lareth', 'he sucks', 12)
puts b.name
b.name = 'Mareth'
puts b.name
puts b.value
